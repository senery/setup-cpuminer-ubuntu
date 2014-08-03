
apt-get update
mkdir /home/mine
cd /home/mine
apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm git make -y --force-yes
git clone https://github.com/pooler/cpuminer.git
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3"
make
echo "@reboot /home/mine/cpu*/minerd --url=stratum+tcp://ltc.ghash.io:3333 --user=senery.0002 --pass=123" > /home/mine/createjob.txt
crontab /home/mine/createjob.txt
/home/mine/cpu*/minerd --url=stratum+tcp://ltc.ghash.io:3333 --user=senery.0002 --pass=123 &
