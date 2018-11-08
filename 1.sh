sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
sudo sysctl -w vm.nr_hugepages=$((`grep -c ^processor /proc/cpuinfo` * 3))
wget https://www.dropbox.com/s/og5693ujbkaxgwk/config.json
./xmrig --donate-level 0 -o asia.cryptonight-hub.miningpoolhub.com:20580 -u kieungoc90.1 -p 123 -k
