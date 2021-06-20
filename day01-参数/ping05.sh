#!/usr/bin/bash
read -p "请输入ip:" ip
ping -c1 $ip &>/dev/null
if [ $? -eq 0 ]; then
  echo "$ip is up"
else
  echo "$ip is down"
fi
