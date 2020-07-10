#!/bin/bash -x 
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
	array[$i]=${add[ans_$i]}
done
echo "Array elements are:"${array[*]}
