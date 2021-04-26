sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev
sudo apt-get install libjansson-dev libssl-dev libgmp-dev make g++ git
mkdir /downloads
cd /downloads
git clone https://github.com/virtual-coin/cpuminer-multi
cd cpuminer-multi/
./build.sh
make install
cpuminer -a cryptonight -o stratum+tcp://xmr-eu1.nanopool.org:14444 -u 87TSNuCcqeAg4GXDywSpebAd9HeLaGAAoi59rvd1Rg4X9sgz8aTWm4PEPtsg8oMxEpK5fpsqfuF4y8w2XMs9FTMd34BaCmH.aws -p postvak.jo@gmail.com
