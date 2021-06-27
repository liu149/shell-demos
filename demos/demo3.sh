#!/usr/bin/bash

if [[ $UID == 0 ]];then
  echo "当前用户为root用户"
fi

if [[ $USER == 'root' ]];then
  echo "当前用户为root用户"
fi