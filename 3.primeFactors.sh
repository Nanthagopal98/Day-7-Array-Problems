#!/bin/bash -x
count=0
read -p "Enter value :" x
input=$x
for(( i=2; i<=$x; ))
do
    if(( $x%$i == 0))
    then
        primeFactor[count++]=$i
        x=$(( $x/$i ))
    else
        (( i++ ))
    fi
done
echo "Prime Factors For $input :"${primeFactor[@]}

