#!/usr/bin/env bash

fileName=`basename /home/kitt/run/admin/run0/logs/admin_run0_2015-07-23.log`

fileName1=${fileName#admin_run0_}
fileName2=${fileName1%.*}

echo ${fileName2}
