#!/bin/bash

#$ -V
#$ -cwd
#$ -q development
#$ -pe 16way 16
#$ -N a3_series
#$ -o a3_series.out
#$ -e a3_series.err
#$ -M mailforavijit@gmail.com
#$ -m be
#$ -l h_rt=01:00:00

export PATH=$PATH:$HOME/cilk/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cilk/lib
cilkview 3_100
cilkview 3_1000
cilkview 3_10000
cilkview 3_100000
