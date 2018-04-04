#################################
run 32ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 0.01ns -cancel 1.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(18) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(3) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(15) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(3) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(6) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(31) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(23) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(14) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(4) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(7) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(2) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(23) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(24) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(13) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(23) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(31) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(22) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(26) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(23) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(23) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(11) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(4) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(4) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(19) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(31) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(19) 1 0.01ns -cancel 1.01ns
run 1000ns
stop