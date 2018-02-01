#!/bin/bash

bar=''
label=('|' '/' '-' '\\')
index=0
min=1
max=100
while(($min<100))
do
	printf "[%-100s][%d%%][%c]\r" "$bar" "$min" "${label[$index]}"
#	printf $bar $i ${label[$index]}
	bar+='#'
	let min++
	let index++
	let index%=4
	sleep 0.01
done

