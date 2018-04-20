#!/usr/bin/python3

import os.path
import sys
import glob
import time
import datetime

from subprocess import Popen, PIPE
from build_do_file import build_do_file
from calculate_latency import calculate_latency

FI_FOLDER = 'FI_1ns_all' # Name of the fault injection folder to use
RTL_PREFIX = '' # Run experiments on fault tolerant router
# RTL_PREFIX = 'Baseline_' # Run experiments on fault baseline router

FAULT_FREE = True # Also do a fault free run
DEBUG = False # Run only one experiment. For debugging
SENT_FILE_PATH = '../../tmp/simul_temp/sent.txt'
RECV_FILE_PATH = '../../tmp/simul_temp/received.txt'

def log_results(results_file, frame_size, fi_rate, latency, design_broken):
    """
    Logs experiment results into a file.
    param results_file: Name of the file to write into
    param frame_size:   Frame size used for packet injectors
    param fi_rate:      Amount of faults injected
    param latency:      Latency for the result
    """

    pir = str(1.0 / int(frame_size))
    latency_normalized = str(float(latency) / 10.0)

    if RTL_PREFIX == 'Baseline_':
        experiment_line = pir + ',' + fi_rate[:-1] + ',' + str(design_broken) + '\n'
    else:
        experiment_line = pir + ',' + fi_rate[:-1] + ',' + latency_normalized + '\n'

    if os.path.isfile(results_file):
        with open(results_file, 'a') as res_file:
            res_file.write(experiment_line)

    else:
        with open(results_file, 'w') as res_file:
            # file_header = 'Frame Size,Fault Rate (in M faults),Average Latency\n'
            # res_file.write(file_header)
            res_file.write(experiment_line)

def execute_modelsim(do_file):
    """
    Executes Modelsim with specified do file.
    param do_file:  Do file tp run Modelsim with
    return:         1 if Modelsim gives an error, 0 when everything went well
    """

    process = Popen('vsim -c -do ' + do_file, stdout=PIPE, shell=True, cwd='../../tmp/simul_temp/')

    for line in process.stdout:
        line_str = str(line.rstrip(), 'utf-8')
        print(line_str)

        # Process the line to detect errors
        if len(line_str.split()) > 1:
            splitted_line = line_str.split(',')[0].split()
            if splitted_line[1] == 'Errors:':
                if int(splitted_line[2]) > 0:
                    print('--- Detected', line_str.split(',')[0].split()[2], 'error(s)!')
                    return 1
                else:
                    print('--- No errors were detected during the run')

    return 0

def run_experiment(tb, fi_do, frame_size, fi_rate, fault_free):
    """
    Builds a do file and runs an experiment with specific testbench and fault injection file.
    param tb:           Path to the testbench file
    param fi_do:        Path to the fault injector file
    param frame_size:   Frame size used for packet injection
    param fi_rate:      Number of faults injected
    return:             Average packet latency
    """

    running_string = 'Running: '+ tb + ', ' + fi_do
    print('=' * len(running_string))
    print(running_string)
    print('=' * len(running_string))
    print()

    do_file = build_do_file(tb, fi_do, fault_free, RTL_PREFIX)
    return_value = execute_modelsim(do_file.split('/')[-1])

    avg_latency = -1

    if return_value != 0:
        print('--- Modelsim detected errors while compiling / running the design')
        print('--- The experiment was run with the following files:')
        print('--- \t TB:', tb)
        print('--- \t FI:', fi_do)

        print('--- Running the experiments was cancelled. Please fix the issue(s)!')
        sys.exit(1)

    latency_file = 'latency_files/latency_' + frame_size + '_' + fi_rate + '.txt'
    try:
        avg_latency = calculate_latency(SENT_FILE_PATH, RECV_FILE_PATH, latency_file)

    except ValueError as err:
        if RTL_PREFIX == 'Baseline_':
            print(str(err))
        else:
            raise err
    return avg_latency

def main():
    """
    Runs all the experiment and logs the results.
    """

    results_file_name = 'results_' + str(int(time.time())) + '.csv'

    starting_time = time.time()
    exp_count = 0

    if DEBUG:
        # If DEBUG, just run one experiment
        tb = '../../experiments/TB_vhdl/network_4x4_Rand_credit_based_1050_tb.vhd'
        fi_do = '../../experiments/FI/' + FI_FOLDER + '/fault_inject_70M.do'
        frame_size = tb.split('_')[-2]
        fi_rate = fi_do.split('_')[-1].split('.')[-2]

        avg_latency = run_experiment(tb, fi_do, frame_size, fi_rate, FAULT_FREE)

        if avg_latency == -1: # Error while calculating latency, design did not recover from a fault
            design_broken = True
        else:
            design_broken = False


        log_results(results_file_name, frame_size, fi_rate, avg_latency, design_broken)
        exp_count = 1

    else:
        test_benches = glob.glob('../../experiments/TB_vhdl/network_4x4_Rand_credit_based_*_tb.vhd')
        fi_files = glob.glob('../../experiments/FI/' + FI_FOLDER + '/fault_inject_*.do')

        # if FAULT_FREE:
        #     print('*' * 20)
        #     print('Starting a Fault Free run!')
        #     print('*' * 20)
        #
        #     for tb in test_benches:
        #         frame_size = tb.split('_')[-2]
        #         avg_latency = run_experiment(tb, "", frame_size, '0M')
        #         log_results(results_file_name, frame_size, '0M', avg_latency)
        #         exp_count += 1
        #
        # else:
        for tb in test_benches:
            frame_size = tb.split('_')[-2]

            if FAULT_FREE:
                frame_size = tb.split('_')[-2]
                avg_latency = run_experiment(tb, "", frame_size, '0M', True)
                if avg_latency == -1: # Error while calculating latency, design did not recover from a fault
                    design_broken = True
                else:
                    design_broken = False
                log_results(results_file_name, frame_size, '0M', avg_latency, design_broken)
                exp_count += 1

            for fi_do in fi_files:
                fi_rate = fi_do.split('_')[-1].split('.')[-2]
                avg_latency = run_experiment(tb, fi_do, frame_size, fi_rate, False)
                if avg_latency == -1: # Error while calculating latency, design did not recover from a fault
                    design_broken = True
                else:
                    design_broken = False
                log_results(results_file_name, frame_size, fi_rate, avg_latency, design_broken)
                exp_count += 1

    time_spent = time.time() - starting_time
    time_spent_str = str(datetime.timedelta(seconds=time_spent))

    print('--- Run', exp_count, 'experiments in', time_spent_str)

if __name__ == "__main__":
    if sys.version_info[0] < 3:
        print("This script only runs on Python 3")
        sys.exit(1)

    main()
