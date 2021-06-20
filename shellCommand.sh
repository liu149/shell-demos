#!/usr/bin/env bash
#常用shell命令
#df命令（disk free）命令用于显示目前在Linux系统上的文件系统磁盘使用情况统计
df -h

#free 用于查看内存的使用情况
free -m
free -m | grep 'Mem:' | awk '{print $3}'
