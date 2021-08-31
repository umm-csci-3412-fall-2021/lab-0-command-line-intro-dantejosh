#!/usr/bin/env bash
INT=$1
tar -zxf NthPrime.tgz
cd NthPrime
gcc  main.c nth_prime.c -o NthPrime
./NthPrime $INT
