#!/usr/bin/env bash


mkdir  -p ~/backup/prod/run/admin

mkdir  -p ~/backup/prod/run/site

mkdir  -p ~/backup/prod/run/msite

rsync -azrP  -e "ssh -p 26622" --exclude 'run/out'  kitt@kitt0:~/run/admin/  ~/backup/prod/run/admin/



if [ $? != 0 ]
  then
 exit 1 ;
 else
    scp -P 26622 ./delete_log_admin.sh   kitt@kitt0:~/script/
    ssh -p 26622 kitt@kitt0 sh  /home/kitt/script/delete_log_admin.sh
fi


rsync -azrP -e "ssh -p 26622"  --exclude 'run/out'  kitt@kitt0:~/run/site/   ~/backup/prod/run/site/
if [ $? != 0 ]
  then
 exit 1 ;
 else
    scp -P 26622 ./delete_log_site.sh   kitt@kitt0:~/script/
    ssh -p 26622 kitt@kitt0 -p 26622  sh  /home/kitt/script/delete_log_site.sh
fi


rsync -azrP -e "ssh -p 26622"  --exclude 'run/out'  kitt@kitt0:~/run/msite/   ~/backup/prod/run/msite/
if [ $? != 0 ]
  then
 exit 1 ;
 else
     scp -P 26622 ./delete_log_msite.sh   kitt@kitt0:~/script/
     ssh -p 26622 kitt@kitt0 sh  /home/kitt/script/delete_log_msite.sh
fi