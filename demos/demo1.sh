#!/usr/bin/bash

read -p "请输入一个数字" num

while true
do
  if [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "你输入的是数字"
    break
  else
    echo "你输入的不是数字"
    read -p "请输入一个数字" num
  fi
done

echo $num