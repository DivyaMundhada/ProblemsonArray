#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
num=$((RANDOM%900+99))
array[$i]=$num
done

echo "the random numbers are"
for (( i=0; i<10; i++ ))
do
echo "${array[$i]}"
done

for (( i=0; i<10; i++ ))
do
  for (( j=((i+1)); j<10; j++ ))
  do
    if [ ${array[$i]} -gt ${array[$j]} ]
      then
      temp=${array[$i]}
      array[$i]=${array[$j]}
      array[$j]=$temp
      fi
  done
done

echo "the second smallest number is ${array[1]}"

echo "the second largest number is ${array[8]}"
