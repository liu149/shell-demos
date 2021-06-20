#!/usr/bin/bash

#变量的赋值
#反引号和$()都是命令替换
#单引号强引用，双引号是弱引用
#ip=192.168.0.1
#city="Bei Jing"
#today=`date +%F`
#today2=$(date +%F)
#
#echo $ip
#echo $city
#echo $today
#echo $today2

#read 从键盘读入变量值
#read var1
#read -p "提示信息：" var2
#echo $var1
#echo $var2

#变量的运算
#方法一:expr
#expr 1 + 2
#expr 1 - 2
#expr 1 \* 2
#expr 1 / 2

#方法二$(()), 变量前面可以不用加$
#echo $((1+2))
#a=1
#b=2
#echo $((a+b))
#echo $((2**10))

#方法三 $[]
#echo $[1+2]
#
#echo $[1*2]


#变量内容的删除和替换
url=www.sina.com.cn

#变量的引用
#echo ${url}

#获取变量的长度
#echo ${#url}

#  #是从前往后删，删掉www.,结果sina.com.cn
#echo ${url#www.}

# 从前往后删，删掉第一个.，结果是sina.com.cn
#echo ${url#*.}

# 从前往后删，两个#是贪婪匹配，一直删到最后一个.，结果是cn
#echo ${url##*.}

# %是从后往前删,结果是www.sina.com.
#echo ${url%cn}

# 从后往前删，模糊匹配，结果是www.sina.com.
#echo ${url%.*}

#两个%，从后往前删，贪婪匹配,结果是www
#echo ${url%%.*}

# 索引及切片,从索引为0的位置开始切片，截取5个，结果为：www.s
#echo ${url:0:5}

#内容的替换,将url中sina替换成baidu，结果为：www.baidu.com.cn
#echo ${url/sina/baidu}

# 单斜线是替换单个，双斜线贪婪匹配，匹配多个
#echo ${url/n/N} #www.siNa.com.cn
#echo ${url//n/N} #www.siNa.com.cN

# 替代,变量 + "-" 当url没有被定义的时候，取url，url没有被定义就取默认值aaaa
#echo ${url-aaaa}
#unset url
#echo ${url-aaaa}

#变量 + ":-"
#echo ${var1:-aaaa} #aaaa
#var2=
#echo ${var2:-bbbb} #bbbb
#var3=c
#echo ${var3:-cccc} #c

# 变量 + "+",变量有被定义的时候就取"+"后的值
#var11=11
#echo ${var11+11} #11
#var22=
#echo ${var22+22} #22
#echo ${var33+33} #空

#变量 + "?",变量有被定义且有值的时候取"?"后的值
var111=var111
echo ${var111?111} # 111
var222=
echo ${var222?222} # 空
#echo ${var333?333} #报错



