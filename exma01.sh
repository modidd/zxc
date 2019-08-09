#!/usr/bin/bash
#
#

case $1 in
start)
	systemctl start mysqld
	;;
stop)
	systemctl stop mysqld
        ;;
status)
	systemctl status mysqld
        ;;
*)
	echo "请输入start|stop|status"
esac
