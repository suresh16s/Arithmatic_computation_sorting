#!/bin/bash
read -p "Enter the 1st number:" a
read -p "Enter the 2nd number:" b
read -p "Enter the 3rd number:" c

ans_1=$(( (a+b)*c ))
echo "The ans is :" $ans_1

ans_2=$(( (a*b)+c ))
echo "The ans is :" $ans_2

ans_3=$(( (c+a)/b ))
echo "The ans is :" $ans_3

ans_4=$(( (a%b)+c ))
echo "The ans is :" $ans_4

declare -A add
add[ans_1]=$ans_1
add[ans_2]=$ans_2
add[ans_3]=$ans_3
add[ans_4]=$ans_4

echo "The dictionary is :" ${add[*]}


for i in {1..4}
do
        arr[$i]=${add[ans_$i]}
done
echo "Array elements are:"${arr[*]}

echo "Array in original order"
echo ${arr[*]}


for ((i = 0; i<5; i++))
do
    for((j = 0; j<5-i-1; j++))
    do
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp 
        fi
    done
done
echo "Array in sorted in Descending order :"
echo ${arr[*]}



for ((i = 0; i<5; i++))
do
    for((j = 0; j<5-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp 
        fi
    done
done
echo "Array in sorted in Ascending order :"
echo ${arr[*]}

