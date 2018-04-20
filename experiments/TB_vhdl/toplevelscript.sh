#! /bin/bash

###
# ./toplevelscript.sh 100
# or in sequence
# for i in `seq 100 100 10000`; do ./toplevelscript.sh $i; done
###

counter=$1

./replace_time.sh $counter > "network_4x4_Rand_credit_based_"$counter"_tb.vhd"