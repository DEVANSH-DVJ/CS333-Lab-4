#!/bin/bash
# script takes 4 arguments that are given to the master worker program

gcc -o master-worker.o master-worker.c -lpthread
./master-worker.o $1 $2 $3 $4 >output
awk -f check.awk MAX=$1 output
