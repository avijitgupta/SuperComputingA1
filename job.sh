#!/bin/bash

#$ -V
#$ -cwd
#$ -q development
#$ -pe 12way 12
#$ -N pmerge3
#$ -o pmerge3.out
#$ -e pmerge3.err
#$ -M mailforavijit@gmail.com
#$ -m be
#$ -l h_rt=01:00:00

export PATH=$PATH:$HOME/cilk/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cilk/lib
cilkview 4_103
cilkview 4_104
cilkview 4_105
