
sudo apt-get update
sudo mkdir /home/mine
cd /home/mine
sudo apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm git make -y --force-yes
sudo git clone https://github.com/pooler/cpuminer.git
cd cpuminer
sudo ./autogen.sh
sudo ./configure CFLAGS="-O3"
sudo make
nohup /home/mine/cpu*/minerd --url=stratum+tcp://ltc.ghash.io:3333 --user=senery.virt1x --pass=123 &
