#!/usr/bin/bash
#
MYBAK=$2
USER=root
PASSWORD=1234
DB=$1
MYDATE=`date +%Y%m%d-%H:%M:%S`
if [ ! -d ${MYBAK} ];then
mkdir -p ${MYBAK}
fi

if [ $# -eq 2 ];then
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
