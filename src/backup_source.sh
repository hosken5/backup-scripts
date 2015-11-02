#!/usr/bin/env bash

mkdir  -p ~/backup/prod/source


rsync -azrlP --exclude ''  kitt@kittc:~/source/  ~/backup/prod/source/
#rsync -azrP --exclude ''  kitt@kittc:~/source/20151020-152521  ~/backup/prod/source/

if [ $? != 0 ]
  then
 exit 1 ;
fi

scp ./delete_source.sh   kitt@kittc:~/script/

ssh kitt@kittc sh  ~/script/delete_source.sh
