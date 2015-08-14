#!/bin/sh
echo "config net..."
ifconfig eth0 192.168.10.33 netmask 255.255.255.0 up  
route add default gw  192.168.10.1  

echo "mount nfs ..."
mount -t nfs -o intr,nolock,rsize=1024,wsize=1024 192.168.10.88:/home/zhangbin/zbhome/omx/bsp/debian/wheezy/nfshome /home

echo "mount done..."

