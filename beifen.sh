#!/usr/bin/bash
#
MYBAK=$2
DB=$1
MYDATE=`date +%Y%m%d-%H:%M:%S`

if [ $# -eq 2 ];then
read -p "你将要备份数据库$DB到$MYBAK，按Y确认" answer
if [ $answer != 'y' ];then
echo "已退出备份"
exit 100
fi

read -p "请输入MySQL账户： " USER
read -s -p "请输入$USER的密码： " PASSWORD
if [ ! -d ${MYBAK} ];then
mkdir -p ${MYBAK}
fi

mysqldump -u$USER -p$PASSWORD --databases $DB > $MYBAK/$DB_$MYDATE.sql

BAKFILE=$MYBAK/$DB_$MYDATE.sql
if [ -f ${BAKFILE} ];then
        echo "今天是 $MYDATE $DB备份成功"
        echo "$DB已经备份到目录$MYBAK中 名为$BAKFILE"
else
        echo "备份可能失败了 请检查....."
fi
else
echo "请输入要备份的数据库名和备份路径"
fi
