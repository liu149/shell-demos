#!/bin/bash

prefix=$1
num=$2

for i in $(seq $num);do
  user=$prefix$num
  useradd $user
  if [ $? -nq 0 ];then
    echo "create user $user error"
    break
  fi

  echo "123" | passwd --stdin $user
  if [ $? -eq 0 ];then
    echo "user $user created successfully"
  fi
done