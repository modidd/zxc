#!/usr/bin/bash
#
if [ $# -ge 1 ];then
systemctl status $1 &> /dev/null
if [ $? -eq 0 ];then
echo "$1 is running"
else
systemctl start $1 &> /dev/null
        if [ $? -eq 0 ];then
        echo "已经帮你启动$1"
        else
        echo "启动服务失败"
        fi
fi
else
echo "请输入一个服务名"
fi
