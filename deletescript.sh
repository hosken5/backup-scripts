#!/usr/bin/env bash

#删除若干天的数据

historyDir=~/test/
today=$(date +%Y-%m-%d)

echo "---------today is $today-----------"
tt=`date -d "-10 day" +%Y-%m-%d`
echo "next is to delete release before $tt"
tt1=`date -d $tt +%s`  #小于此数值的文件夹删掉
echo $tt1
for file in ${historyDir}*
do
    echo $file
    if test -d $file
        then
        name=`basename $file`
        echo $name
        curr=`date -d $name +%s`
        if [ $curr -le $tt1 ]
            then
                echo " delete $name-------"
                rm -rf ${historyDir}${name}
        fi
    fi
done