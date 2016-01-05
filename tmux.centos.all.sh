yum update -y
yum install -y automake gcc ncurses-devel git
mkdir bzizi.com
cd bzizi.com
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

echo tmux successful installation,enjoy it
echo Welcome to www.bzizi.com -- haozibi