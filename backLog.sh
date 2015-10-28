#!/usr/bin/env bash

mkdir  -p ~/tmp/run/admin/run0

mkdir  -p ~/tmp/run/admin/run1

mkdir  -p ~/tmp/run/site/run0

mkdir  -p ~/tmp/run/site/run1

mkdir  -p ~/tmp/run/msite/run0

mkdir  -p ~/tmp/run/msite/run1

scp -r kitt@kitta:~/run/admin/run0/*   ~/tmp/run/admin/run0

if [ $? == 1 ]
  then
 exit 1 ;
fi


scp -r kitt@kitta:~/run/admin/run1/*   ~/tmp/run/admin/run1

if [ $? == 1 ]
  then
 exit 1 ;
fi

scp -r kitt@kitta:~/run/site/run0/*   ~/tmp/run/site/run0
if [ $? == 1 ]
  then
 exit 1 ;
fi

scp -r kitt@kitta:~/run/site/run1/*   ~/tmp/run/site/run1
if [ $? == 1 ]
  then
 exit 1 ;
fi

scp -r kitt@kitta:~/run/msite/run0/*   ~/tmp/run/msite/run0
if [ $? == 1 ]
  then
 exit 1 ;
fi

scp -r kitt@kitta:~/run/msite/run1/*   ~/tmp/run/msite/run1
if [ $? == 1 ]
  then
 exit 1 ;
fi