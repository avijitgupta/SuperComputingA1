#!/bin/bash

#$ -V
#$ -cwd
#$ -q development
#$ -pe 12way 12
#$ -N pmerge
#$ -o pmerge.out
#$ -e pmerge.err
#$ -M mailforavijit@gmail.com
#$ -m be
#$ -l h_rt=01:00:00

export PATH=$PATH:$HOME/cilk/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cilk/lib
cilkview m_4_103
cilkview m_4_104
cilkview m_4_105
cilkview m_4_106
cilkview m_4_107
cilkview 4_103
cilkview 4_104
cilkview 4_105
cilkview 4_106
cilkview 4_107

