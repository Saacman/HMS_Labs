#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Nov 14 11:56:48 CET 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 205c4557ef864dc58a957515408cdbe1 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot BCDto7Seg_tb_behav xil_defaultlib.BCDto7Seg_tb -log elaborate.log"
xelab -wto 205c4557ef864dc58a957515408cdbe1 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot BCDto7Seg_tb_behav xil_defaultlib.BCDto7Seg_tb -log elaborate.log

