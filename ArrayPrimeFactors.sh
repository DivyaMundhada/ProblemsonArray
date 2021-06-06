#! /bin/bash -x

count=0

read -p "Enter the number to compute prime factor :" number


while [ $(( number % 2 )) -eq 0 ]
do
        primecount[((count++))]='2'
        number=$(( number / 2 ))
done


for (( i=3; i<=number; i=i + 2 ))
do
        while [ $(( number % i )) -eq 0 ]
        do
            primecount[((count++))]=$i
            number=$(( number / i ))
        done
done

echo Prime Factorisation are:  ${primecount[@]} 
