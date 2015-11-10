#!/usr/bin/env bash
#/home/kitt/run/share
#备份共享文件
mkdir  -p ~/backup/prod/database


rsync -azrlP   -e "ssh -p 26622"  mysql@kitt1:/home/mysql/backup  ~/backup/prod/database
#rsync -azrP --exclude ''  kitt@kittc:~/source/20151020-152521  ~/backup/prod/source/
echo "同步成功！"
if [ $? != 0 ]
  then
 exit 1 ;
 else
    sh import_database.sh
fi