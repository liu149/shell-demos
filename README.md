demo1判断用户输入的是不是数字
```bash
#!/bin/bash

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
```

demo2 判断目录是否存在，不存在就创建
```
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
```

