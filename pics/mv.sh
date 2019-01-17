#!/bin/bash
a=$(ls | grep "lv_honda")
lim=30000
i=1
while [[ $i -le $lim ]]; do
	name=$(echo $a | cut -f$i -d' ')
	mv "$name" honda_bike/
	echo "$name moved!!!!!"
	((i++))
done
