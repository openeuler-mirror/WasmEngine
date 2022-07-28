#!/bin/bash

# This experiment is intended to document how the level of concurrent requests influence the latency, throughput, and success/failure rate

# Add bash_libraries directory to path
__run_sh__base_path="$(dirname "$(realpath --logical "${BASH_SOURCE[0]}")")"
__run_sh__bash_libraries_relative_path="../bash_libraries"
__run_sh__bash_libraries_absolute_path=$(cd "$__run_sh__base_path" && cd "$__run_sh__bash_libraries_relative_path" && pwd)
export PATH="$__run_sh__bash_libraries_absolute_path:$PATH"

source csv_to_dat.sh || exit 1
source generate_gnuplots.sh || exit 1
source get_result_count.sh || exit 1
source panic.sh || exit 1
source percentiles_table.sh || exit 1

if ! command -v hey >/dev/null; then
	echo "hey is not present."
	exit 1
fi

declare -gi iterations=10000
declare -ga concurrency=(1 20 40 60 80 100)
declare -g hey_command=""

run_samples() {
	if (($# != 2)); then
		panic "invalid number of arguments \"$1\""
		return 1
	elif [[ -z "$1" ]]; then
		panic "hostname \"$1\" was empty"
		return 1
	fi

	local hostname="$1"
	local test_type="$2"

	printf "Running Samples: "
	hey_iterations=16
	conn=1
	get_command_from_type "$test_type"
	eval "$hey_command" || {
		printf "[ERR]\n"
		panic "samples failed"
		return 1
	}

	printf "[OK]\n"
	return 0
}

# Execute the experiments
# $1 (hostname)
# $2 (results_directory) - a directory where we will store our results
# $3 (test_type)
run_experiments() {
	if (($# != 3)); then
		panic "invalid number of arguments \"$1\""
		return 1
	elif [[ -z "$1" ]]; then
		panic "hostname \"$1\" was empty"
		return 1
	elif [[ ! -d "$2" ]]; then
		panic "directory \"$2\" does not exist"
		return 1
	fi

	local hostname="$1"
	local results_directory="$2"

	# Execute the experiments
	printf "Running Experiments:\n"
	for conn in ${concurrency[*]}; do
		printf "\t%d Concurrency: " "$conn"
		conn=$conn
		hey_iterations=$iterations
		get_command_from_type "$test_type"
		eval $hey_command >"$results_directory/con$conn.csv" 2>/dev/null || {
			printf "[ERR]\n"
			panic "experiment failed"
			return 1
		}
		get_result_count "$results_directory/con$conn.csv" || {
			printf "[ERR]\n"
			panic "con$conn.csv unexpectedly has zero requests"
			return 1
		}
		printf "[OK]\n"
	done

	return 0
}

process_results() {
	if (($# != 1)); then
		panic "invalid number of arguments ($#, expected 1)"
		return 1
	elif ! [[ -d "$1" ]]; then
		panic "directory $1 does not exist"
		return 1
	fi

	local -r results_directory="$1"

	printf "Processing Results: "
	# Write headers to CSVs
	if ! grep -q "Concurrency,Success_Rate" "$results_directory/success.csv" 2>/dev/null; then
		printf "Concurrency,Success_Rate\n" >>"$results_directory/success.csv"
	fi
	if ! grep -q "Concurrency,Throughput" "$results_directory/throughput.csv" 2>/dev/null; then
		printf "Concurrency,Throughput\n" >>"$results_directory/throughput.csv"
	fi
	if ! grep -q "cnt,min,mean" "$results_directory/latency.csv" 2>/dev/null; then
		percentiles_table_header "$results_directory/latency.csv" "Con"
	fi

	for conn in ${concurrency[*]}; do

		if [[ ! -f "$results_directory/con$conn.csv" ]]; then
			printf "[ERR]\n"
			panic "Missing $results_directory/con$conn.csv"
			return 1
		fi

		# Calculate Success Rate for csv (percent of requests resulting in 200)
		awk -F, '
		$7 == 200 {ok++}
		END{printf "'"$conn"',%3.5f\n", (ok / '"$iterations"' * 100)}
	' <"$results_directory/con$conn.csv" >>"$results_directory/success.csv"

		# Filter on 200s, convert from s to ms, and sort
		awk -F, '$7 == 200 {print ($1 * 1000)}' <"$results_directory/con$conn.csv" |
			sort -g >"$results_directory/con$conn-response.csv"

		# Get Number of 200s
		oks=$(wc -l <"$results_directory/con$conn-response.csv")
		((oks == 0)) && continue # If all errors, skip line

		# We determine duration by looking at the timestamp of the last complete request
		# TODO: Should this instead just use the client-side synthetic duration_sec value?
		duration=$(tail -n1 "$results_directory/con$conn.csv" | cut -d, -f8)

		# Throughput is calculated as the mean number of successful requests per second
		throughput=$(echo "$oks/$duration" | bc)
		printf "%d,%f\n" "$conn" "$throughput" >>"$results_directory/throughput.csv"

		# Generate Latency Data for csv
		percentiles_table_row "$results_directory/con$conn-response.csv" "$results_directory/latency.csv" "$conn"

		# Delete scratch file used for sorting/counting
		rm -rf "$results_directory/con$conn-response.csv"
	done

	# Transform csvs to dat files for gnuplot
	csv_to_dat "$results_directory/success.csv" "$results_directory/throughput.csv" "$results_directory/latency.csv"

	# Generate gnuplots
	generate_gnuplots "$results_directory" "$__run_sh__base_path" || {
		printf "[ERR]\n"
		panic "failed to generate gnuplots"
	}

	printf "[OK]\n"
	return 0
}

get_command_from_type() {
	local test_type="$1"

	common_part="hey -n \$hey_iterations -c \$conn -cpus 1 -o csv -m POST -H \"Content-Type: application/json\" -d '{\"arg_uri\":\"yes\", \"arg_body\":\"yes\", \"arg_secret\":\"12345\"}' "
	case "$test_type" in
	"wasi") hey_command="$common_part""http://${target_hostname}:10000/function/run/authentication-wasi/1.0.0/start" ;;
	"wasm") hey_command="$common_part""http://${target_hostname}:10000/function/run/authentication/1.0.0/authentication" ;;
	"js") hey_command="$common_part""http://${target_hostname}:8001/authentication" ;;
	*)
		echo "you need to choose only one test type"
		exit 1
		;;
	esac
}

# Expected Symbol used by the framework
experiment_client() {
	local -r target_hostname="$1"
	local -r results_directory="$2"
	local -r test_type="$3"

	run_samples "$target_hostname" "$test_type" || return 1
	run_experiments "$target_hostname" "$results_directory" "$test_type" || return 1
	process_results "$results_directory" || return 1

	return 0
}

experiment_client 127.0.0.1 /root/gitee/wasm-engine/experiments/result wasi
