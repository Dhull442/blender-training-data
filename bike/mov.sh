#!/bin/bash
a=$(ls | grep ".png")
i=1;
lim=$(echo $a | wc -w)
while [[ $i -le $lim ]]; do
	name=$(echo $a | cut -f$i -d' ')
	newname=$(echo $name | cut -f1 -d'.')
	mv "$name" "$newname.png"
	((i++))
done
