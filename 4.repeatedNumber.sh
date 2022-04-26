#!/bin/bash -x

count=0
value=11
for (( i=11; i<=99; i++ ))
do
	if (( $i%$value==0 ))
	then
	number[count++]={$i}
	fi
done
echo ${number[@]}
