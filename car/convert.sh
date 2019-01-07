#!/bin/bash
a=$(ls | grep ".exr")
lim=$(echo $a | wc -w)
echo $lim
lim = 1
i=1
while [[ $i -le $lim ]]; do
	name=$(echo $a | cut -f $i -d ' ')
	newname=$( echo $name | cut -f1 -d '.')
	convert "$name" "$newname.png"
	rm -rf $name
	((i++))
	echo "$name is processed."
done
