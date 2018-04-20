#! /bin/bash

###
# ./replace_time.sh 100 > new.vhdl
###

num=$1

sed "s/4,4, 100, /4,4, $num,/" base.vhdl
