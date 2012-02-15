#!/bin/bash

#$ -V
#$ -cwd
#$ -q development
#$ -pe 12way 12
#$ -N _3_10000
#$ -o 3_10000.out
#$ -e 3_10000.err
#$ -M mailforavijit@gmail.com
#$ -m be
#$ -l h_rt=01:00:00

export PATH=$PATH:$HOME/cilk/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cilk/lib
cilkview 3_10000 -cilk_set_worker_count=1
