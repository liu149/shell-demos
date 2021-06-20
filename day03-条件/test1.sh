#!/bin/bash

if [ $UID -eq 0 ]; then
    echo "you're root"
  else
    echo "you're not root"
fi

if [ $USER = "root" ];then
    echo "you're root..."
  else
    echo "you're not root..."
fi