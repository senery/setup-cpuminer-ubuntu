# permanent sudo
sudo -s

# update repos
apt-get update

# create and go to working dir
mkdir /home/mine
cd /home/mine

# WEBMIN SHIZZLE #
# get webmin package
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.680_all.deb

# install webmin
dpkg -i web*.deb

# fix dependencies webmin
apt-get install -f

# CPUMINER SHIZZLE #
# install dependencies
apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm git make

# clone cpuminer
git clone https://github.com/pooler/cpuminer.git
 
# compile
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3"
make

# run
./cpu*/minerd --url=stratum+tcp://ltc.ghash.io:3333  --user=senery.core32 --pass=123
 
# choose a miner pool and register there
 
# start the miner
#./minerd --url=your.minerpool.org  --user=username --pass=password