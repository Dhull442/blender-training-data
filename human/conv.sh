#!/bin/bash
a=$(ls | grep ".png")
lim=$(echo $a | wc -w)
i=1
while [[ i -le lim ]]; do
	#statements
	name=$(echo $a | cut -f $i -d' ')
	newname=$(echo $name| cut -f1 -d'.')
	mv "$name" "$newname.png"
	((i++))
done
