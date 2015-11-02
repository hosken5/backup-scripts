#!/usr/bin/env bash
#删除若干天的数据

logDir=/home/kitt/source2/

today=$(date +%Y-%m-%d)

echo "---------today is $today-----------"
tt=`date -d "-7 day" +%Y-%m-%d`
echo "next is to delete source before $tt"
tt1=`date -d $tt +%s`  #小于此数值的文件夹删掉
#echo $tt1

currentfile1=`ls -l ${logDir}   |grep current |awk '{print $11}'`

currentfile=`basename ${currentfile1}`

if [ "$currentfile" = "" ]
then
currentfile="current"
fi

lastfile1=`ls -l ${logDir}   |grep last |awk '{print $11}'`

lastfile=`basename ${lastfile1}`

if [ "$lastfile" = "" ]
then
lastfile="last"
fi


for file in ${logDir}*
do
    #echo $file
    if test -d $file
    then
        name=`basename $file`       #20150608-161725
        if [ $name = $currentfile ] || [ $name = $lastfile ] || [ $name = "current" ]
        then
            echo "ignoring $name------"
        else
            name1=${name:0:8}
            curr=`date -d $name1 +%s`
            if [ $curr -le $tt1 ]
                then
                    echo "delete $name-------"
                    rm -rf ${logDir}${name}
                else
                    echo "preserve $name------"
            fi
        fi
    fi
done