#!/bin/bash -x
read -p "Enter the 1st number:" a
read -p "Enter the 2nd number:" b
read -p "Enter the 3rd number:" c

ans_3=$(( (c+a)/b ))
echo "The ans is :" $ans_3


