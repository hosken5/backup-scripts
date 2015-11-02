#!/usr/bin/env bash

#变量定义
#ip_array=("192.168.0.28" "192.168.1.2" "192.168.1.3")
user="test1"

remote_cmd="/home/test/1.sh"

#本地通过ssh执行远程服务器的脚本
for ip in ${ip_array[*]}
do
    if [ $ip = "192.168.1.1" ]; then
        port="7777"
    else
        port="22"
    fi
    ssh -t -p $port $user@$ip "remote_cmd"
done
