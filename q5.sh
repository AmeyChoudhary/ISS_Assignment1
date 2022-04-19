#!/bin/bash
echo "Enter string:" 
read string
for ((i = ${#string} - 1; i >= 0; i--))
do
reverse1=$reverse1${string:$i:1}
done
echo $reverse1

for ((i =${#string}-1; i >= 0; i--))
do
reverse2=$reverse2${string:$i:1}
done
y=$(echo "$reverse2" | tr "A-Za-z" "B-ZAb-za")
echo "$y" 



for ((i =(${#string}/2) - 1; i >= 0; i--))
do
reverse3=$reverse3${string:$i:1}
done



for ((i = ${#string}/2 ; i < ${#string} ; i++))
do
reverse3=$reverse3${string:$i:1}
done



echo $reverse3