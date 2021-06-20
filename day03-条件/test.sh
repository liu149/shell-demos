#!/bin/bash
# shell中0为真1为假
# test命令
#test -d /home
#echo $? #0

# []等同于test
#[ -d /home ]
#echo $? #0

#[ 1 -gt 0 -a 2 -gt 1 ];echo $? # 0

for i in `seq 10`
do
  echo $i
done
