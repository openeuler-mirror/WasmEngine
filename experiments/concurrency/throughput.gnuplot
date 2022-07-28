reset

set term jpeg 
set output "throughput.jpg"

stats 'throughput.dat' nooutput
N = STATS_records

set xlabel "Concurrency"
set ylabel "Requests/sec"

set xrange [-5:105]
set yrange [0:]

plot for [i=0:N/6-1]'throughput.dat' every ::(0+i*6)::(5+i*6) using 1:2 title 'Reqs/sec '.i with linespoint pointtype (i+1)