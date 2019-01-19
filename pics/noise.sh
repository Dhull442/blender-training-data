#!/bin/bash
mkdir noise
a=$(ls | grep ".png")
lim=$(echo $a | wc -w)
i=1
while [[ $i -le $lim ]]; do
	name=$(echo $a | cut -f$i -d' ')
	convert "$name" +noise Poisson "noise/$name"
	echo "$name is converted!"
	((i++))
done
