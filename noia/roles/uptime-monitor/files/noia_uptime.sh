#!/bin/bash

monday=$(cat /root/monday_utc_timestamp.log)
current=$(tac /var/log/syslog |grep -m 1 "Received statistics" | cut -f 3 -d "," |cut -f 4 -d " ")

#echo $monday
#echo $current

uptime=$((current-monday))

echo $uptime
