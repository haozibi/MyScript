yum update -y
yum install -y gcc openssl-devel git automake gcc ncurses-devel
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
echo " python --> python2 "
echo " python3 --> python3 "
echo Welcome to www.bzizi.com -- haozibi

cd ..

wget https://bootstrap.pypa.io/ez_setup.py -O - | python2
wget https://pypi.python.org/packages/source/p/pip/pip-7.1.2.tar.gz#md5=3823d2343d9f3aaab21cf9c917710196

tar -zxvf pip-7.1.2.tar.gz
cd pip-7.1.2
python2 setup.py install

clear

cd ..

wget http://iweb.dl.sourceforge.net/project/levent/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz

tar -zxvf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure && make
make install

cd ..

git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
make install

ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib/libevent-2.0.so.5     # 32位系统
ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5   # 64位系统
clear

cd ~

clear

echo " Python3 tmux Python2-pip  successful installation,enjoy it"
echo " Python3 ==> 3.5.1 "
echo " pip ==> 7.1.2 "
echo " python --> python2 "
echo " python3 --> python3 "
echo " pip --> Python2 "
echo " pip3 --> Python3 "
echo " Welcome to www.bzizi.com -- haozibi "



