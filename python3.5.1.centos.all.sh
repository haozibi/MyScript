yum update -y
yum install -y gcc openssl-devel git
mkdir bzizi.com
cd bzizi.com
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
tar -zxvf Python-3.5.1.tgz
cd Python-3.5.1
./configure && make
make install 
ln -s /usr/local/bin/python3  /usr/bin/python3

clear

echo Python3 successful installation,enjoy it
echo python => python2
echo python3 = > python3
echo Welcome to www.bzizi.com -- haozibi