#!/bin/bash

read -p "please entry the user you want create:" user

if id $user &>/dev/null
then
  echo "用户已经存在"
else
  useradd $user
  if [ $? -eq 0 ]
  then
    echo "用户创建成功"
  fi
fi