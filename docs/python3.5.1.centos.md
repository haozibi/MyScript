# centos6安装python3

## 编译安装

### 安装依赖
```
yum update
yum install -y gcc openssl-devel
#yum install -y openssl-devel #must,使python3支持ssl
```
### 下载python3.5.1源码，并安装
```
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
tar -zxvf Python-3.5.1.tgz
cd Python-3.5.1
./configure && make
make install 
```
### 添加软链接
```
ln -s /usr/local/bin/python3  /usr/bin/python3
```
或者替换python3为python（要修改yum配置）
```
rm /usr/bin/python
cp /usr/bin/python3  /usr/bin/python
```

### 修改yum配置
```
vim /usr/bin/yum
```
通过vim修改yum的配置#!/usr/bin/python改为#!/usr/bin/python2，保存退出。完成了python3的安装。 

### 优点

安装完自带pip3
pip != pip3
pip3 => pip3
