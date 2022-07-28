from abc import ABC, abstractmethod
import sys
import matplotlib.pyplot as plt


class LineChart(ABC):
    """
    Line chart program
    """

    def __init__(self, output):
        self.csv_file = []
        self.init_args()
        self.data = []
        self.output = output

    def init_args(self):
        import argparse
        import platform

        class MyParser(argparse.ArgumentParser):
            def error(self, message):
                sys.stderr.write('error: %s\n' % message)
                self.print_help()
                sys.exit(2)

        parser = MyParser(description="plot line chart")
        parser.add_argument('csv', nargs='+', help='result csv file')
        args = parser.parse_args()

        for csv in args.csv:
            self.csv_file.append(csv)

    @abstractmethod
    def process_raw_data(self):
        pass

    def plot(self, xlabel, ylabel, plot_label):
        max_y = 0
        for i, data_entry in enumerate(self.data):
            x_ticks = [k for k in data_entry.keys()]
            y_ticks = [v for v in data_entry.values()]
            print(y_ticks)
            cur_max = max(y_ticks)
            if cur_max > max_y:
                max_y = cur_max

            plt.scatter(x_ticks, y_ticks, color="C" + str(i))
            plt.plot(x_ticks, y_ticks,
                     color="C" + str(i), label=plot_label[i])
            plt.ylim(top=max_y * 1.2)
            plt.xlabel(xlabel)
            plt.ylabel(ylabel)
            plt.legend(loc="best")
        plt.show()
        plt.savefig(self.output, bbox_inches='tight')
