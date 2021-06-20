#!/bin/bash
#判断用户有没有加参数
if [ $# -eq 0 ]; then
    echo "usage: `basename $0` filename"
    exit
fi

#
if [ ! -f $1 ]; then
    echo 'error'
    exit
fi

for ip in `cat $1`
  do ping -c1 $ip &>/dev/null
  if [ $? -eq 0 ]; then
      echo "$ip is up"
  else
      echo "$ip is down"
  fi
done