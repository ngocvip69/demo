#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-8-jdk maven git gcc make -y
sudo apt-get install build-essential -y
cd
git clone git://github.com/Programmerdan/arionum-java
cd arionum-java/arionum-miner
git checkout investigate
touch config.cfg
chmod 755 config.cfg
echo "pool
http://aropool.com/
Byf1VQ8U7DPkMKKQWGaxKETqAmpcmmf6NB7nTecW3wWKpRGpdGhATZsUjLz38rVixkkonAVBsUC3fMLAKC8GsWH
1
enhanced
true
hostname" > config.cfg
mvn clean package
chmod +x build-argon.sh
./build-argon.sh
chmod +x run.sh
tmux new-session -d -s my_session && './run.sh'
