#!/bin/bash

if [ $# -eq 0 ];then
  echo "Usage: $0 file"
  exit 1
fi

if [ ! -f $1 ];then
  echo "$1 is not a valid file"
  exit 1
fi

for ip in $(cat $1)
do
  ping -c1 $ip &>/dev/null
  if [ $? -eq 0 ]
  then
    echo "$ip can connect successfully!"
  else
    echo "$ip can't connect"
  fi
done