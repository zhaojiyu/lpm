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
echo "Luminati Start OK..."
