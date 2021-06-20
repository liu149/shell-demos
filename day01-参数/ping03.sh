#!/usr/bin/bash
ip=8.8.8.8
if ping -c1 $ip &>/dev/null;then
  echo "$ip is up"
else
  echo "$ip is down"
fi
