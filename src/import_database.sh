#!/usr/bin/env bash

cd /home/jenkins/backup/prod/database/backup
echo "开始导入kitt.$(date +%Y%m%d)_04_04.sql到数据库。。。"
gunzip -c  kitt.$(date +%Y%m%d)_04_04.sql.gz > kitt.$(date +%Y%m%d)_04_04.sql
mysql -udemo -p'1qaz@WSX' kitt1 <   kitt.$(date +%Y%m%d)_04_04.sql
 # mysql -udemo -p'1qaz@WSX' kitt1 <kitt.20151110_04_04.sql
echo "导入成功！"
