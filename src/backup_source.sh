#!/usr/bin/env bash

mkdir  -p ~/backup/prod/source


rsync -azrP --exclude ''  kitt@kitta:~/source/20151020-152521  ~/backup/prod/source/
#rsync -azrP --exclude ''  kitt@kittc:~/source/20151020-152521  ~/backup/prod/source/

if [ $? != 0 ]
  then
 exit 1 ;
fi

echo "/home/kitt/script/delete_source.sh" | ssh kitt@kitta
