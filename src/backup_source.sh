#!/usr/bin/env bash

mkdir  -p ~/backup/prod/source

rsync -azrlP   -e "ssh -p 26622"  kitt@kitt0:~/source/  ~/backup/prod/source/
#rsync -azrP --exclude ''  kitt@kittc:~/source/20151020-152521  ~/backup/prod/source/

if [ $? != 0 ]
  then
 exit 1 ;
 else
    scp -P 26622  ./delete_source.sh   kitt@kitt0:~/script/
    ssh -p 26622  kitt@kitt0 sh  /home/kitt/script/delete_source.sh
fi