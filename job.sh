#!/bin/bash

#$ -V
#$ -cwd
#$ -q development
#$ -pe 12way 12
#$ -N parE2
#$ -o parE2.out
#$ -e parE2.err
#$ -M mailforavijit@gmail.com
#$ -m be
#$ -l h_rt=01:00:00

export PATH=$PATH:$HOME/cilk/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cilk/lib
cilkview 3p_100000 -cilk_set_worker_count=1

