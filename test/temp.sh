#!/usr/bin/env bash
logDir=/Users/hongpf/hosken5/backup-scripts/source/

today=$(date +%Y-%m-%d)

echo "---------today is $today-----------"
tt=`date -d "-1 day" +%Y-%m-%d`
echo "next is to delete source before $tt"
tt1=`date -d $tt +%s`  #小于此数值的文件夹删掉
#echo $tt1

currentfile1=`ls  ${logDir}  -al |grep current`

currentfile=${currentfile1##*/}

echo $currentfile

#lastfil1=`ls  ${logDir}  -al |grep last`

#lastfile2=${lastfile1##*/}
#if [ $lastfile2 = '' ]
#then
#lastfile="current"
#fi



for file in ${logDir}*
do
    #echo $file
    if test -d $file
    then
        name=`basename $file`       #20150608-161725
        echo $name
        if [ $name = $currentfile ]  || [ $name = "current" ]
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

#mkdir 201506061 201506062 201506063 201506064 201506065