sudo apt-get update
sudo apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm git make -y --force-yes
sudo git clone https://github.com/pooler/cpuminer.git
cd cpuminer
sudo ./autogen.sh
sudo ./configure CFLAGS="-O3"
sudo make
cd ~
nohup ./cpuminer/minerd --url=stratum+tcp://scrypt.ltcrabbit.com:3333 --user=senery.aws2 --pass=x -q &
