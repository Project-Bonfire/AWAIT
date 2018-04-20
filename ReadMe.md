This repository contains local Bonfire NoC with optional local fault management support

https://github.com/Project-Bonfire/Bonfire

----------

License:  	GNU GENERAL PUBLIC LICENSE Version 3

----------
People involved in this project:
- Siavoosh Payandeh Azad
- Behrad Niazmand
- Karl Janson
----------

# Folder structure:
-- Baseline_Packages - RTL package files for the baseline router

-- Baseline_RTL - RTL files for the baseline router

-- RTL - RTL files for the router with local fault management mechanism

-- Packages - RTL package files for the router with local fault management mechanism

-- tmp - Used to store temporary simulation data

-- experiments - Contains experimental data for profiling the local fault management mechanism and also scripts used for running the experiments

|

+- FI - contains fault injection files

|

+- TB_vhdl - contains testbenches for different packages injection rates

|

+- experiment scripts - contains experiment scripts

# Running the experiments:
**Note:** The experiments are tested on Linux Ubuntu LTS 16.04.

To run the experiments, you need to go to the *experiment scripts* folder:
 cd experiments/experiment_scipts/

And run the run_experiments.py script
 python3 run_experiments.py

**Note:** You need to have Modelsim / Questasim in your path before you run the script

You can change between running the script on local fault management version and the baseline version of the router by replacing the RTL_PREFIX variable in run_experiments.py.

The fault injection run can be changed by pointing the FI_FOLDER variable to the desired directory.

The results of each experiment run are stored inside the experiment_scipts folder in a file called results_<unix_time>.csv

# Interpreting the results
Interpreting the results depends on whether the experiments were run on baseline or on the local fault management version of the NoC

 - **Baseline:** In case of baseline, the format of the csv file is the following:
     - <packet_injection_rate (packets per clk)>,<fault_injection_rate (million faults per second)>,<run_failed?>
     - <run_failed?>=true - fault injection caused some packets not to be received by the destination node; <run_failed?>=False - the destination node received all the faults
 - **Local fault management:** In case of the local fault management, the format of the result file is the following:
     - <packet_injection_rate (packets per clk)>,<fault_injection_rate (million faults per second)>,<average latency (clk cycles)>
