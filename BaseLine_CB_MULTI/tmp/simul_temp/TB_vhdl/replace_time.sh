#! /bin/bash

###
# ./replace_time.sh 100 > new.vhdl
###

num=$1

sed "s/10000 ns/$num ns/" base.vhdl
