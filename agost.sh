#!/bin/sh
rm -rf *.log
chmod +x gost
lum_id=`ps -ef|grep gost|grep -v grep|awk '{print $2}'`
if  [ ! -n "$lum_id" ] ; then
    echo "will start..."
else
    echo $lum_id
    kill -9 $lum_id
    echo "Kill OK"
fi
sleep 1s

nohup ./gost -L=tcp://:1433/asia1.ethermine.org:4444 -F=relay+tls://47.75.49.75:8443 > log8.log 2>&1 &

echo "Gost 2 Start OK......"
