#!/bin/bash

disk_use=`df -Th | grep "/$" | awk '{print $(NF-1)}' | awk -F"%" '{print $1}'`

memory_total=`free | grep "Mem:" | awk '{print $2}'`
memory_used=`free | grep "Mem:" | awk '{print $2}'`

used_percent=$((memory_used*100/memory_used))

if [ disk_use -gt 90 ]
then
  echo "磁盘将要满了，请注意"
fi

if [ used_percent -gt 80 ]
then
  echo "内存超过80%,请注意"
fi

