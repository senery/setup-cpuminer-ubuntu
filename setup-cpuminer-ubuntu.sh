#! /bin/sh
# update repos
apt-get update
# create and go to working dir
mkdir /home/mine
cd /home/mine
# WEBMIN SHIZZLE #
# get webmin package
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.680_all.deb --no-check-certificate
# install webmin
dpkg -i web*.deb
# fix dependencies webmin
apt-get install -f -y
# CPUMINER SHIZZLE #
# install dependencies
apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm git make -y
# clone cpuminer
git clone https://github.com/pooler/cpuminer.git
# compile
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3"
make
echo "@reboot /home/mine/cpu*/minerd --url=37.187.240.6:22550 --user=DQ8Yt3nD16cWBt5MXVeJvdrysYpe3nGYrV --pass=123" > /home/mine/createjob.txt
crontab /home/mine/createjob.txt
# run
/home/mine/cpu*/minerd --url=37.187.240.6:22550 --user=DQ8Yt3nD16cWBt5MXVeJvdrysYpe3nGYrV --pass=123
# choose a miner pool and register there
# start the miner
#./minerd --url=your.minerpool.org  --user=username --pass=password
