#!/usr/bin/bash

if ! test -d ~/test1;then
mkdir ~/test1
  echo "test1创建完成"
fi

if [ ! -d ~/test2 ];then
  mkdir ~/test2
  echo "test2创建完成"
fi

if [[ ! -d ~/test3 ]];then
  mkdir ~/test3
  echo "test3创建完成"
fi