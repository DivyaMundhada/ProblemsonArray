#! /bin/bash -x

declare -a array
read -p "Enter the number of elements :" n

for ((i=0;i<n;i++))
do
        echo Enter the element
        read num
        array[((i))]=$num
done
echo ${array[*]}

for ((i=0; i<n-2;i++))
do
        for ((j=i+1;j<n-1;j++))
        do
                for ((k=j+1;k<n;k++))
                do
                sum=`expr ${array[$i]} + ${array[$j]} + ${array[$k]} `
                if [ $sum == 0 ]
                then
                echo ${array[$i]} ${array[$j]} ${array[$k]}
                fi
                done
        done
done

