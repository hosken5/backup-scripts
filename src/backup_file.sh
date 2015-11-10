#!/usr/bin/env bash
#/home/kitt/run/share
#备份共享文件
mkdir  -p ~/backup/prod/run/share


rsync -azrlP   -e "ssh -p 26622"  kitt@kitt0:~/run/share  ~/backup/prod/run/share
#rsync -azrP --exclude ''  kitt@kittc:~/source/20151020-152521  ~/backup/prod/source/