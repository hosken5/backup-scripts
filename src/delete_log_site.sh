#!/usr/bin/env bash
logDir=/home/kitt/run/site/logs/

today=$(date +%Y-%m-%d)

echo "---------today is $today-----------"
tt=`date -d "-7 day" +%Y-%m-%d`
echo "next is to delete sitelogs before $tt"
tt1=`date -d $tt +%s`  #小于此数值的文件夹删掉
#echo $tt1
for file in ${logDir}*
do
    #echo $file
    if test -f $file
        then
        name=`basename $file`       #kitt0_2015-07-23.log
        name1=${name#kitt.}          #2015-07-23.log
        name2=${name1%.log}         #2015-07-23

        #echo $name2
        curr=`date -d $name2 +%s`
        if [ $curr -le $tt1 ]
            then
                echo "delete $name-------"
                rm -rf ${logDir}${name}
            else
                echo "preserve $name------"
        fi
    fi
done