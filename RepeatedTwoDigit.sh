#! /bin/bash -x

declare -a array

for ((i=1;i<100;i++))
do
        if [ $((i%11)) == 0 ]
        then
        array[((i))]=$i
        fi
done

echo The repeated numbers in the range of 0 to 100 are ${array[*]}


