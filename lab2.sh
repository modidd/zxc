#!/usr/bin/bash
#
read -p "输入分数: " grade
if [ $grade -ge 0 ] && [ $grade -lt 60 ];then
echo "D"
elif [ $grade -ge 60 -a $grade -lt 80 ];then
echo "C"
elif [[ $grade -ge 80 && $grade -lt 90 ]];then
echo "B"
elif [[ $grade -ge 90 && $grade -le 100 ]];then
echo "A"
else
echo "请输入0-100的分数"
fi
