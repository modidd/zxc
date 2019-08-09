#!/usr/bin/bash
#
#
num=1
while [ $num -le 9 ]
do
echo "$num*$num=$((num*num))"
num=$((num+1))
done
