#!/usr/bin/bash
#
#
>user.dat
if [ $# -eq 0 ];then
echo "这个脚本用来创建账号 用法 $0 用户名1 用户名2 ......"
exit
fi

while [ $# -gt 0 ]
do
id $1 &> /dev/null
if [ $? -ne 0 ];then
useradd $1 &>/dev/null
fi
uuidgen|cut -d - -f 5|tee $1|passwd --stdin $1 &>/dev/null
echo  "$1 `cat $1`">>user.dat
shift
done

if [ $? -eq 0 ];then
echo "用户都已创建 用户名和密码在文件 user.dat"
fi

