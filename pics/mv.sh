#!/bin/bash
a=$(ls | grep "lv")
lim=$(echo $a| wc -w)
i=1
while [[ $i -le $lim ]]; do
	name=$(echo $a | cut -f$i -d' ')
	mv "$name" simple/
	echo "$name moved!!!!!"x	
	((i++))
done
