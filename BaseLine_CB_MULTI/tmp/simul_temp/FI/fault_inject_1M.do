#################################
run 78ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 8.01ns -cancel 9.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 7.01ns -cancel 8.01ns
run 19ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 7.01ns -cancel 8.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 2.01ns -cancel 3.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 7.01ns -cancel 8.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 4.01ns -cancel 5.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 5.01ns -cancel 6.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 10.01ns -cancel 11.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 10.01ns -cancel 11.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 7.01ns -cancel 8.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 7.01ns -cancel 8.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 6.01ns -cancel 7.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 2.01ns -cancel 3.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 9.01ns -cancel 10.01ns
run 13ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 1.01ns -cancel 2.01ns
run 12ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 3.01ns -cancel 4.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 0.01ns -cancel 1.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 6.01ns -cancel 7.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 6.01ns -cancel 7.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 1.01ns -cancel 2.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 6.01ns -cancel 7.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 1.01ns -cancel 2.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 8.01ns -cancel 9.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 8.01ns -cancel 9.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 2.01ns -cancel 3.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 6.01ns -cancel 7.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 8.01ns -cancel 9.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 2.01ns -cancel 3.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 1.01ns -cancel 2.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 10.01ns -cancel 11.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 0.01ns -cancel 1.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 9.01ns -cancel 10.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 9.01ns -cancel 10.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 8.01ns -cancel 9.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 5.01ns -cancel 6.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 1.01ns -cancel 2.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 0.01ns -cancel 1.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 7.01ns -cancel 8.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 7.01ns -cancel 8.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 17ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 7.01ns -cancel 8.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 3.01ns -cancel 4.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 7.01ns -cancel 8.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 1.01ns -cancel 2.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 5.01ns -cancel 6.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 7.01ns -cancel 8.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 7.01ns -cancel 8.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 9.01ns -cancel 10.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 8.01ns -cancel 9.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 9.01ns -cancel 10.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 9.01ns -cancel 10.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 9.01ns -cancel 10.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 8.01ns -cancel 9.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 2.01ns -cancel 3.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 8.01ns -cancel 9.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 2.01ns -cancel 3.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 0.01ns -cancel 1.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 5.01ns -cancel 6.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 2.01ns -cancel 3.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 9.01ns -cancel 10.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 1.01ns -cancel 2.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 8.01ns -cancel 9.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 4.01ns -cancel 5.01ns
run 13ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 7.01ns -cancel 8.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 7.01ns -cancel 8.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 4.01ns -cancel 5.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 1.01ns -cancel 2.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 9.01ns -cancel 10.01ns
run 12ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 7.01ns -cancel 8.01ns
run 12ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 1.01ns -cancel 2.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 7.01ns -cancel 8.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 5.01ns -cancel 6.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 5.01ns -cancel 6.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
run 12ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 10.01ns -cancel 11.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 10.01ns -cancel 11.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 1.01ns -cancel 2.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 8.01ns -cancel 9.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 8.01ns -cancel 9.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 12ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 9.01ns -cancel 10.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 7.01ns -cancel 8.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 10.01ns -cancel 11.01ns
run 13ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 6.01ns -cancel 7.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 5.01ns -cancel 6.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 5.01ns -cancel 6.01ns
run 16ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 1.01ns -cancel 2.01ns
run 13ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 10.01ns -cancel 11.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 6.01ns -cancel 7.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 3.01ns -cancel 4.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 6.01ns -cancel 7.01ns
run 13ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 7.01ns -cancel 8.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 5.01ns -cancel 6.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 10.01ns -cancel 11.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 9.01ns -cancel 10.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 6.01ns -cancel 7.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 9.01ns -cancel 10.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 1.01ns -cancel 2.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 0.01ns -cancel 1.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 9.01ns -cancel 10.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 5.01ns -cancel 6.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 8.01ns -cancel 9.01ns
run 13ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 4.01ns -cancel 5.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 3.01ns -cancel 4.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 6.01ns -cancel 7.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 7.01ns -cancel 8.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 3.01ns -cancel 4.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 4.01ns -cancel 5.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 10.01ns -cancel 11.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 1.01ns -cancel 2.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 2.01ns -cancel 3.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 3.01ns -cancel 4.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 5.01ns -cancel 6.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 4.01ns -cancel 5.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 0.01ns -cancel 1.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 7.01ns -cancel 8.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 0.01ns -cancel 1.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 10.01ns -cancel 11.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 8.01ns -cancel 9.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 4.01ns -cancel 5.01ns
run 10ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 0 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 10.01ns -cancel 11.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 2.01ns -cancel 3.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 1.01ns -cancel 2.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 1 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 4.01ns -cancel 5.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 9.01ns -cancel 10.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 1 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 10.01ns -cancel 11.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 1 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 6.01ns -cancel 7.01ns
run 12ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 1 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 1 6.01ns -cancel 7.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 7.01ns -cancel 8.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 1.01ns -cancel 2.01ns
run 11ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 0 0.01ns -cancel 1.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 6.01ns -cancel 7.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 1 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 0.01ns -cancel 1.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 0 3.01ns -cancel 4.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 4.01ns -cancel 5.01ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 0 9.01ns -cancel 10.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 0 7.01ns -cancel 8.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 2.01ns -cancel 3.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 5.01ns -cancel 6.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 4.01ns -cancel 5.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 3.01ns -cancel 4.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 9.01ns -cancel 10.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 0 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 3.01ns -cancel 4.01ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 1 5.01ns -cancel 6.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 1 1.01ns -cancel 2.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 3.01ns -cancel 4.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 1 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 0 1.01ns -cancel 2.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 1 2.01ns -cancel 3.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 10.01ns -cancel 11.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 0 3.01ns -cancel 4.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 2.01ns -cancel 3.01ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 0 1.01ns -cancel 2.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 1.01ns -cancel 2.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 1 9.01ns -cancel 10.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 8.01ns -cancel 9.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 0 7.01ns -cancel 8.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_N(17) 1 0.01ns -cancel 1.01ns
run 9ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_W(9) 1 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_S(8) 1 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_S(8) 1 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 0 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 0 0.01ns -cancel 1.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_N(30) 0 8.01ns -cancel 9.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 0 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_W(12) 1 0.01ns -cancel 1.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_N(28) 1 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_N(30) 0 1.01ns -cancel 2.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_E(5) 0 7.01ns -cancel 8.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_E(26) 0 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_E(13) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_W(0) 0 2.01ns -cancel 3.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_E(14) 0 6.01ns -cancel 7.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_E(3) 0 0.01ns -cancel 1.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_N(21) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_N(0) 1 7.01ns -cancel 8.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_N(12) 0 8.01ns -cancel 9.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_W(29) 0 5.01ns -cancel 6.01ns
run 5ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_W(25) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_S(21) 1 6.01ns -cancel 7.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_W(20) 1 8.01ns -cancel 9.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_12:RX_N(5) 0 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_W(27) 1 5.01ns -cancel 6.01ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_W(21) 1 6.01ns -cancel 7.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_6:RX_S(13) 0 4.01ns -cancel 5.01ns
run 8ns
force -drive sim/:tb_network_4x4:NoC:R_9:RX_N(28) 1 6.01ns -cancel 7.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_0:RX_S(18) 0 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_W(13) 1 5.01ns -cancel 6.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_N(0) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_E(30) 0 9.01ns -cancel 10.01ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_W(13) 1 1.01ns -cancel 2.01ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_N(24) 0 8.01ns -cancel 9.01ns
run 2ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_W(25) 1 0.01ns -cancel 1.01ns
force -drive sim/:tb_network_4x4:NoC:R_11:RX_S(8) 0 2.01ns -cancel 3.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_8:RX_E(22) 1 4.01ns -cancel 5.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_S(5) 1 2.01ns -cancel 3.01ns
run 7ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_S(25) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_S(3) 0 7.01ns -cancel 8.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_1:RX_S(13) 0 9.01ns -cancel 10.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_10:RX_E(28) 0 9.01ns -cancel 10.01ns
run 3ns
force -drive sim/:tb_network_4x4:NoC:R_13:RX_E(13) 1 3.01ns -cancel 4.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_4:RX_E(0) 0 10.01ns -cancel 11.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_14:RX_E(6) 1 5.01ns -cancel 6.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_7:RX_S(3) 0 8.01ns -cancel 9.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_2:RX_E(24) 1 4.01ns -cancel 5.01ns
run 1ns
force -drive sim/:tb_network_4x4:NoC:R_3:RX_S(8) 1 5.01ns -cancel 6.01ns
run 4ns
force -drive sim/:tb_network_4x4:NoC:R_15:RX_W(19) 1 0.01ns -cancel 1.01ns
run 6ns
force -drive sim/:tb_network_4x4:NoC:R_5:RX_N(18) 1 2.01ns -cancel 3.01ns
run 1000ns
stop