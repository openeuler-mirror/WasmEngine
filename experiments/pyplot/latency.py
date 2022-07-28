from line_chart import LineChart


class Latency(LineChart):
    def process_raw_data(self):
        for csv in self.csv_file:
            data = {}
            with open(csv) as f:
                lines = f.readlines()
                total_round = len(lines[1:])/6
                for line in lines[1:]:
                    raw = line.strip().split(',')
                    if raw[0] not in data:
                        data[raw[0]] = float(raw[3])
                        continue
                    data[raw[0]] = data[raw[0]] + float(raw[3])
            for k, v in data.items():
                data[k] = v / total_round
            self.data.append(data)


m = Latency("latency")
m.process_raw_data()
m.plot("concurrency", "latency", ["latency-wasi(ms)", "latency-js(ms)"])
