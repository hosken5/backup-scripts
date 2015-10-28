#!/usr/bin/env bash

mkdir  -p ~/tmp/run/admin/run0

scp -r kitt@kitta:~/run/admin/run0/*   ~/tmp/run/admin/run0

if [ $? == 1 ]
  then
 exit 1 ;
fi

echo 'after transfer'