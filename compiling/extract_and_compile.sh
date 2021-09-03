#!/usr/bin/env bash
#INT is the set to the value of the first argument that is passed to the script
INT=$1

#This line tells tar we are working with a compressed file (z) then extract the file (x) and then f is the flag for the name of the file we are extracting.

tar -zxf NthPrime.tgz

# Go into the NthPrime directory created by the tar command or exit if the cd fails
cd NthPrime || exit

# Compile and combine the c files in the NthPrime directory to form the executable name NthPrime
gcc  main.c nth_prime.c -o NthPrime

#Call the  newly created executable with the INT argument that was passed in through the script argument
./NthPrime "$INT"
