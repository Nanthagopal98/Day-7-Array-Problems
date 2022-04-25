#!/bin/bash -x

for ((i=0; i<10; i++ ))
do
randomNumber=$((RANDOM%1000))
values[i]=$(($randomNumber))
done
echo ${values[@]}

for ((i = 0; i<10; i++))
do
    for((j = 0; j<10; j++))
    do
	n=$(($j+1))
        if [[ ${values[j]} -gt ${values[$n]} ]]
        then
            temp=${values[j]}
            values[$j]=${values[$n]}
            values[$n]=$temp
        fi
    done
done
echo ${values[@]}
echo "Second Maximum Value is :"${values[2]}
echo "Second Minimun Value is :"${values[9]}
