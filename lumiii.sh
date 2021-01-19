#!/bin/sh
iptables -F
yum install wget gcc gcc-c++ -y
cd /usr/local/
wget https://nodejs.org/dist/v12.18.3/node-v12.18.3-linux-x64.tar.gz
tar -xvf  node-v12.18.3-linux-x64.tar.gz
mv node-v12.18.3-linux-x64 node
cat >>/etc/profile<<EOF
### Set for nodejs ###
export NODE_HOME=/usr/local/node
export PATH=\$NODE_HOME/bin:\$PATH
EOF
cd /root/
source /etc/profile
