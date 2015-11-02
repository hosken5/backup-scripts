#!/usr/bin/env bash
# History
# 2013/09/25 Hs
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export PATH
network="192.168.0"
for sitenu in $(seq 1 255)
do
        ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1

        if [ "$result" == 0 ]; then
                echo "Server ${network}.${sitenu} is UP."
        else
                echo "Server ${network}.${sitenu} is DOWN."
        fi
done