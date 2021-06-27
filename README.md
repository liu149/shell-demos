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

demo3 判断当前用户
```
#!/usr/bin/bash

if [[ $UID == 0 ]];then
  echo "当前用户为root用户"
fi

if [[ $USER == 'root' ]];then
  echo "当前用户为root用户"
fi
```

demo4 遍历一个目录下的文件是否满足正则
```
#/bin/bash

if [[ ! -d $1 ]];then
  echo "Require parameter directory"
  exit -1
fi

work_dir=$1
items=$(ls $work_dir)
for i in ${items[@]}
do
  if [[ $i =~ ^[0-9]+$ ]];then
    echo $i
  fi
done
```
demo5 测试文件中的ip是不是可以ping通
```
#!/bin/bash

if [ $# -eq 0 ];then
  echo "Usage: $0 file"
  exit 1
fi

if [ ! -f $1 ];then
  echo "$1 is not a valid file"
  exit 1
fi

for ip in $(cat $1)
do
  ping -c1 $ip &>/dev/null
  if [ $? -eq 0 ]
  then
    echo "$ip can connect successfully!"
  else
    echo "$ip can't connect"
  fi
done
```
demo6 根据输入对字符串，如果该用户不存在就创建
```
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
```
demo7 磁盘和内存使用情况
```
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

```
demo8批量创建用户

