#!/usr/bin/env bash


mkdir  -p ~/backup/prod/run/admin/run0

mkdir  -p ~/backup/prod/run/admin/run1

mkdir  -p ~/backup/prod/run/site/run0

mkdir  -p ~/backup/prod/run/site/run1

mkdir  -p ~/backup/prod/run/msite/run0

mkdir  -p ~/backup/prod/run/msite/run1

scp -r kitt@kitta:~/run/admin/run0/*   ~/backup/prod/run/admin/run0

if [ $? != 0 ]
  then
 exit 1 ;
fi

echo "/home/kitt/script/delete_log_admin_run0.sh" | ssh kitt@kitta



scp -r kitt@kitta:~/run/admin/run1/*   ~/backup/prod/run/admin/run1

if [ $? != 0 ]
  then
 exit 1 ;
fi


echo "/home/kitt/script/delete_log_admin_run1.sh" | ssh kitt@kitta


scp -r kitt@kitta:~/run/site/run0/*   ~/backup/prod/run/site/run0
if [ $? != 0 ]
  then
 exit 1 ;
fi

echo "/home/kitt/script/delete_log_site_run0.sh" | ssh kitt@kitta


scp -r kitt@kitta:~/run/site/run1/*   ~/backup/prod/run/site/run1
if [ $? != 0 ]
  then
 exit 1 ;
fi
echo "/home/kitt/script/delete_log_site_run1.sh" | ssh kitt@kitta

scp -r kitt@kitta:~/run/msite/run0/*   ~/backup/prod/run/msite/run0
if [ $? != 0 ]
  then
 exit 1 ;
fi

echo "/home/kitt/script/delete_log_msite_run0.sh" | ssh kitt@kitta


scp -r kitt@kitta:~/run/msite/run1/*   ~/backup/prod/run/msite/run1
if [ $? != 0 ]
  then
 exit 1 ;
fi
echo "/home/kitt/script/delete_log_msite_run1.sh" | ssh kitt@kitta
