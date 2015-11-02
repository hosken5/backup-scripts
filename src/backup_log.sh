#!/usr/bin/env bash


mkdir  -p ~/backup/prod/run/admin

mkdir  -p ~/backup/prod/run/site

mkdir  -p ~/backup/prod/run/msite

rsync -azrP  kitt@kittc:~/run/admin/  ~/backup/prod/run/admin/

if [ $? != 0 ]
  then
 exit 1 ;
 else
    scp ./delete_log_admin.sh   kitt@kittc:~/script/
    ssh kitt@kittc sh  /home/kitt/script/delete_log_admin.sh
fi


rsync -azrP  kitt@kittc:~/run/site/   ~/backup/prod/run/site/
if [ $? != 0 ]
  then
 exit 1 ;
 else
    scp ./delete_log_site.sh   kitt@kittc:~/script/
    ssh kitt@kittc sh  /home/kitt/script/delete_log_site.sh
fi


rsync -azrP  kitt@kittc:~/run/msite/   ~/backup/prod/run/msite/
if [ $? != 0 ]
  then
 exit 1 ;
 else
     scp ./delete_log_msite.sh   kitt@kittc:~/script/
     ssh kitt@kittc sh  /home/kitt/script/delete_log_msite.sh
fi