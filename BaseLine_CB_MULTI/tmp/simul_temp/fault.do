
#########################
###                   ###
### COMBINATORY ONLY  ###
###                   ###
#########################


#######################
###                 ###
### WITHOUT BUBBLES ###
###                 ###
#######################

#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_0_OUT_1 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_1_OUT_2 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_2_OUT_3 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_3_OUT_4 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_4_OUT_5 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_5_OUT_6 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_6_OUT_7 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_7_OUT_E 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_F_OUT_0 		'0' 1ns
#force -freeze sim/:unit_serial_top_tb:uut:HOLD_IN_F_OUT_0_FF 	'0' 1ns

##############################
###                        ###
### END OF WITHOUT BUBBLES ###
###                        ###
##############################
run 900 ns

run 200 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

#######################
###                 ###
### SEQUENTIAL ONLY ###
###                 ###
#######################

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty



#############################
###                       ###
### MIXED MULTIPLE ERRORS ###
###                       ###
#############################

run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 150 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 150 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 150 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 150 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 200 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty

run 200 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 20 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty




run 100 ns
force -freeze sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty '1' 1ns
run 3000 ns
noforce sim/:tb_network_4x4:NoC:R_7:INPUT_PARITY_S:faulty


run 1000 ns

###############
###         ###
### THE END ###
###         ###
###############