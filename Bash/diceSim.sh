#!/usr/bin/env bash
	count="0"
	total="0"
	side=$1
	throws=$2
	#side="6"
	#throws="500000"
	arr=(0 0 0 0 0 0)

	while [ "$count" -lt "$throws" ]; do
		rand=$((($RANDOM % $side) + 1))
		((arr[$(($rand-1))]++))
		total=$(($rand+$total))
		((count++))
	done

	echo "Threw a 6-sided dice $throws times."
	echo "Results:"
	echo -n "Side:    1       2       3       4       5       6"	
	echo
	echo -n "Count:   ${arr[0]}   ${arr[1]}   ${arr[2]}   ${arr[3]}   ${arr[4]}   ${arr[5]}"
	
	echo
	echo "Sum of throws: $total"
