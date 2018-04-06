#!/usr/bin/python3

import glob
import time
import datetime

from build_do_file import build_do_file

DEBUG = True

def run_experiments(tb, fi_do):
    running_string = 'Running: '+ tb + ', ' + fi_do
    print('=' * len(running_string))
    print(running_string)
    print('=' * len(running_string))
    print()

    do_file = build_do_file(tb, fi_do)


def main():
    starting_time = time.time()
    exp_count = 0

    if DEBUG:
        # If DEBUG, just run one set of experiments
        run_experiments('../TB_vhdl/network_4x4_Rand_credit_based_50_tb.vhd',
                        '../FI/fault_inject_10M.do')
        exp_count = 1

    else:
        test_benches = glob.glob('../TB_vhdl/network_4x4_Rand_credit_based_*_tb.vhd')
        fi_files = glob.glob('../FI/fault_inject*.do')

        for tb in test_benches:
            for fi_do in fi_files:
                run_experiments(tb, fi_do)
                exp_count += 1

    time_spent = time.time() - starting_time
    time_spent_str = str(datetime.timedelta(seconds=time_spent))

    print('Run', exp_count, 'experiments in', time_spent_str)

if __name__ == "__main__":
    main()
