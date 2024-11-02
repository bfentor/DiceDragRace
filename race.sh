#!/usr/bin/env bash
TIMEFORMAT="%R seconds"

echo -n "C = "
time ./C/diceSim > /dev/null

cd Java
echo -n "Java = "
time java diceSim > /dev/null
echo -n "Python = "
time python3 ../Python/diceSim.py > /dev/null
echo -n "Bash = "
time ../Bash/diceSim.sh 6 500000 > /dev/null
