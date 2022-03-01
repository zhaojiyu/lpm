#!/bin/sh
rm -rf *.log
chmod +x gost
sleep 1s
nohup ./gost -L=tcp://:1433/asia1.ethermine.org:4444 -F=relay+tls://47.75.49.75:8443 > log8.log 2>&1 &
echo "Gost Start OK......"
