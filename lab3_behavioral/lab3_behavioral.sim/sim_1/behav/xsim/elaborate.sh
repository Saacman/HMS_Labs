#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Nov 16 10:01:22 CET 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 61c074980e2c4990a61a9555976a3108 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot counters_tb_behav xil_defaultlib.counters_tb -log elaborate.log"
xelab -wto 61c074980e2c4990a61a9555976a3108 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot counters_tb_behav xil_defaultlib.counters_tb -log elaborate.log

