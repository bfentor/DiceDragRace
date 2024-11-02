#!/usr/bin/env bash
if [ $# -eq "2" ]; then
	count="0"
	total="0"

	i="0"
	while [ "$i" -lt "$1" ]; do
		arr[$i]="0"
		((i++))
	done

	while [ "$count" -lt "$2" ]; do
		rand=$((($RANDOM % $1) + 1))
		((arr[$(($rand-1))]++))
		total=$(($rand+$total))
		((count++))
	done

	echo "Threw a $1-sided dice $2 times."
	echo "Results:"
	echo -n "Side:    "
	
	num="1"
	while [ "$num" -le $1 ]; do
		echo -n "$num   "
		((num++))
	done
	
	echo ""
	echo -n "Count:   "
	i="0"
	while [ $i -lt ${#arr[@]} ]; do
		num="${arr[$i]}"
		echo -n "$num   "
		((i++))
	done
	
	echo ""
	echo "Sum of throws: $total"
else 
	echo "Expected 2 arguments."
fi
