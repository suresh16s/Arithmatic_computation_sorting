#!/bin/bash -x
read -p "Enter the 1st number:" a
read -p "Enter the 2nd number:" b
read -p "Enter the 3rd number:" c

ans_1=$(( (a+b)*c ))
echo "The ans is :" $ans_1
