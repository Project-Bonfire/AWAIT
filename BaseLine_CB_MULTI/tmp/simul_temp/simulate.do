#########################################
# Copyright (C) 2016 Project Bonfire    #
#                                       #
# This file is automatically generated! #
#             DO NOT EDIT!              #
#########################################

vlib work

# Include files and compile them
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/Packages/router_pack.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/arbiter_in.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/arbiter_out.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/allocator.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/LBDR.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/xbar.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/NI.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/Parity_checker_for_router_links.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/FIFO_one_hot_credit_based.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/RTL/base_line/Router_32_bit_credit_based.vhd"
vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/Packages/TB_Package_32_bit_credit_based_NI.vhd"
#vcom "/home/rene/Documents/Projects/Local-fault-management/BaseLine_CB_MULTI/Packages/TB_Package_32_bit_credit_based.vhd"
vcom "network_4x4_credit_based.vhd"
vcom "TB_vhdl/network_4x4_Rand_credit_based_100_tb.vhd"
#vcom "network_4x4_Rand_credit_based_tb.vhd"

# Start the simulation
vsim work.tb_network_4x4

# Draw waves
do wave_4x4.do
# Run the simulation
#vcd file wave.vcd
#vcd add -r -optcells /*
#run 12000 ns
#vcd flush



#vcd flush