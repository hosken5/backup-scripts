#!/usr/bin/env bash
cd `dirname $0`
start=$(date +%s)
echo "$(date '+%Y-%m-%d %H:%M:%S'):开始执行:backup_log.sh"  | tee -a  ./logs/backup_log.log
sh backup_log.sh | tee -a ./logs/backup_log.log
end=$(date +%s)
echo "$(date '+%Y-%m-%d %H:%M:%S'):执行结束:backup_log.sh" | tee -a  ./logs/backup_log.log
echo "消耗时间：$(($end-$start))秒" | tee -a  ./logs/backup_log.log
echo "----------------$(date +%Y-%m-%d)-------------------" | tee -a  ./logs/backup_log.log

echo "" | tee -a  ./logs/backup_log.log
echo "" | tee -a  ./logs/backup_log.log
echo "" | tee -a  ./logs/backup_log.log