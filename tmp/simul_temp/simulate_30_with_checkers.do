vlib work

# Include RTL files and compile them
vcom "../../Packages/with_checkers/router_pack.vhd"
vcom "../../RTL/base_line_with_checkers/FIFO_one_hot_credit_based_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/FIFO_one_hot_credit_based_with_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/arbiter_in_checkers/Arbiter_in_one_hot_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/arbiter_in_checkers/Arbiter_in_one_hot_with_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/arbiter_out_checkers/Arbiter_out_one_hot_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/arbiter_out_checkers/arbiter_out_one_hot_with_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/allocator_with_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/LBDR_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/LBDR_with_checkers.vhd"
vcom "../../RTL/base_line_with_checkers/xbar.vhd"
vcom "../../RTL/base_line_with_checkers/Parity_checker_for_router_links.vhd"
vcom "../../RTL/base_line_with_checkers/Router_32_bit_credit_based.vhd"
vcom "../../RTL/network_4x4_credit_based.vhd"

# Testbench
vcom "../../Packages/TB_Package_32_bit_credit_based.vhd"
vcom "../../RTL/network_4x4_Rand_credit_based_tb.vhd"

# Start the simulation
vsim work.tb_network_4x4

# Draw waves
do wave_4x4.do

# Run the simulation and fault injection
vcd file wave.vcd
vcd add -r -optcells tb_network_4x4:NoC:*
do fault_inject_with_checkers.do
run 12000 ns
vcd flush
