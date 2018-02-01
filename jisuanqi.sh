#!/bin/bash

add()
{
	sum=0;
	idx=0;
	for (( ; ; )) 
	do
		echo "请输入数据";
		read num;
		if [ $num -le 0 ]
		then
			break;
		fi
		let sum=num+sum;
		echo $sum
	done
	echo $sum
}

fun()
{
	i=0;
	sumistr=0;
	sum=0;
	while [ $i -le 100 ]
	do
		sumstr=$sumstr+$i;
		let sum=sum+i;
		let i++;
	done
		
	echo ${sumstr#+*}=$sum;
}

add1()
{
	sum=0;
	for i in "$*"
	do
		echo $i
	#	echo $@
	#	let sum+=i;		 			
	done
	echo $sum
}
add1 1 2 3
