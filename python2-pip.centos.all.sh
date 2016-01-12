yum update -y
yum install -y make
mkdir bzizi.com
cd bzizi.com

wget --no-check-certificate https://bootstrap.pypa.io/ez_setup.py -O - | python2
wget --no-check-certificate https://pypi.python.org/packages/source/p/pip/pip-7.1.2.tar.gz#md5=3823d2343d9f3aaab21cf9c917710196

tar -zxvf pip-7.1.2.tar.gz
cd pip-7.1.2
python2 setup.py install

cd ~

clear
echo "python2 - pip " successful installation,enjoy it
echo Welcome to www.bzizi.com -- haozibi
