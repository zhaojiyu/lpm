#!/bin/sh
iptables -F
#luminati -d
lum_id=`ps -ef|grep node|grep -v grep|awk '{print $2}'`
if  [ ! -n "$lum_id" ] ; then
    echo "Lumininati will start..."
else
    echo $lum_id
    luminati --stop-daemon
    sleep 3s
    kill -9 $lum_id
    echo "Kill OK..."
fi
sleep 3s
luminati -d
echo "Waiting luminati start..."
sleep 10s
rm -rf iptables* 
iptables -F
iptables -P INPUT ACCEPT
iptables -L -n
lpm_whitelist_ip 47.75.49.75
lpm_whitelist_ip 121.196.8.110
lpm_whitelist_ip 222.174.185.118
echo "Luminati Start OK..."
