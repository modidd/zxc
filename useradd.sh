#!/usr/bin/bash
#从文件里获取用户名，批量创建用户
#

> user.dat
for USER in $*
do
id ${USER} &> /dev/null
if [ $? -ne 0 ];then
useradd ${USER} &> /dev/null
fi
uuidgen|cut -d - -f 5|tee $USER|passwd --stdin $USER &> /dev/null
echo "$USER  `cat $USER`" >> user.dat
done
if [ $? -eq 0 ];then
echo "用户都已创建 用户名和密码在文件 user.dat"
fi
