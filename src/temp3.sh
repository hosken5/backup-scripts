#!/usr/bin/env bash
logDir=/Users/hongpf/hosken5/backup-scripts/source/

currentfile1=`ls -l ${logDir}   |grep current |awk '{print $11}'`

currentfile=`basename ${currentfile1}`

echo $currentfile

lastfile1=`ls -l ${logDir}   |grep last |awk '{print $11}'`

if [ "$lastfile1" = "" ]
then
lastfile1="current"
fi

echo ${lastfile1}

exit 0  ;


for file in ${logDir}*
do
    if test -d $file
    then
        name=`basename $file`       #20150608-161725
        if [ $name = $currentfile ]  || [ $name = "current" ]
        then
            echo "ignoring $name------"
        else
            echo  "testing $name------"
        fi
    fi
done

#mkdir 201506061 201506062 201506063 201506064 201506065
