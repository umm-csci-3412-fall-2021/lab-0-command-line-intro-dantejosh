#!/usr/bin/env bash
$int=$1
tar -zxf NthPrime.tgz
cd /NthPrime
gcc  main.c nth_prime.c -o nthPrime
