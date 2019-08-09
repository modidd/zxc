#!/usr/bin/bash
#
#
v1=1
while true
do
echo $v1
	if [ $((v1%2)) -eq 0 ];then
	v1=`expr $v1 + 1`
	break
	fi
done
