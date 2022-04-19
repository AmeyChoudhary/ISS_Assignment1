#!/bin/bash
read -p "Enter the input:" input

declare -i N=0 
IFS=,
declare -i a
for a in $input
do
    Array[$N]=$a
     N+=1
done


for ((i=0; i<N-1; i++))
do 
for ((j=0; j<N-i-1; j++))
do
if [ ${Array[$j]} -gt ${Array[$((j+1))]} ];
then
temp=${Array[$j]}
Array[$j]=${Array[$((j+1))]}
Array[$((j+1))]=$temp
fi
done
done

echo ${Array[*]}
