#!/bin/sh
wget https://raw.githubusercontent.com/zhaojiyu/lpm/main/gost && chmod +x gost
sleep 1s
wget https://raw.githubusercontent.com/zhaojiyu/lpm/main/agost.sh
rm -rf gost1.sh
echo "Gost Install OK......"
