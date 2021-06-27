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

