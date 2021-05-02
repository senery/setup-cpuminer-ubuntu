sudo apt-get update &&
sudo apt-get install build-essential automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++ git &&
sudo apt-get install zlib1g-dev &&
sudo mkdir /downloads
cd /downloads
sudo git clone https://github.com/virtual-coin/cpuminer-multi
cd cpuminer-multi/
sudo ./build.sh
# cpuminer -a cryptonight -o stratum+tcp://xmr-eu1.nanopool.org:14444 -u 87TSNuCcqeAg4GXDywSpebAd9HeLaGAAoi59rvd1Rg4X9sgz8aTWm4PEPtsg8oMxEpK5fpsqfuF4y8w2XMs9FTMd34BaCmH.aws -p postvak.jo@gmail.com
# cpuminer -a scrypt --url=stratum+tcp://europe.solomining.io:8882 --userpass=DNkNBZ9HqJLMou8FTdGQyN33AJX5qsSwdA:x
#cpuminer -a scrypt --url=stratum+tcp://scrypt.eu.mine.zpool.ca:3433  --userpass=DJgkh8C3hboyU3nRCAf8t2vzo1Mdqp3G2v.a1:c=DOGE
#cpuminer -a scrypt --url=stratum+tcp://scrypt.eu.mine.zpool.ca:3433  --userpass=1C3Wy7ejWjkk3TdDojpK4bqDqvXdX62HAD:c=BTC,zap=EMC2/LTC
cpuminer -a scrypt --url=stratum+tcp://litecoinpool.org:3333	--userpass=senery.aws1:x
cpuminer -a scrypt --url=stratum+tcp://scrypt.eu.mine.zergpool.com:3433 --userpass=1C3Wy7ejWjkk3TdDojpK4bqDqvXdX62HAD:c=BTC,mc=EFL,ID=aws1

bc1qek8w92e7ayykwv507wkkkxgfdhhm7vnecp0sl7

