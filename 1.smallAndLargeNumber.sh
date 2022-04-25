#!/bin/bash -x

for ((i=0; i<10; i++ ))
do
randomNumber=$((RANDOM%1000))
values[i]=$(($randomNumber))
done
echo ${values[@]}

indexCount=${#values[@]}
maxValue=${values[0]}
secondMaxValue=${values[0]}
minValue=${values[9]}
secondMinValue=${values[9]}

for (( j=0; j<indexCount; j++ ))
do
	if (( $maxValue < ${values[j]} ))
	then
	secondMaxValue=$maxValue
	maxValue=${values[j]}
	elif (( $secondMaxValue < ${values[j]} ))
	then
        secondMaxValue=${values[j]}
	fi
done
for (( k=9; k>=0; k-- ))
do
        if (( $minValue > ${values[k]} ))
        then
        secondMinValue=$minValue
        minValue=${values[k]}
        elif (( $secondMinValue > ${values[k]} ))
        then
        secondMinValue=${values[k]}
        fi
done
echo ${values[@]}
echo "Maximum Value is :"$maxValue
echo "Second Maximum value is :"$secondMaxValue
echo "Minimum Value is :"$minValue
echo "Second Minimum value is :"$secondMinValue
