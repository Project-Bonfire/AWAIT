#################################
run 2017ns
#force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(24) 1 7.999999999999999999ns -cancel 109ns
#force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(24) 1 7.9999999ns -cancel 109ns
#force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(24)  1 8.000999999999999999ns -cancel 109ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(24) 1 8.001ns -cancel 109ns
#force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(24) 1 8ns -cancel 109ns

run 3000ns
stop