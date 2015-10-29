#!/usr/bin/env bash

mkdir  -p ~/backup/prod/source

scp -r kitt@kitta:~/source/*   ~/backup/prod/source

if [ $? != 0 ]
  then
 exit 1 ;
fi

echo "/home/kitt/script/delete_source.sh" | ssh kitt@kitta
