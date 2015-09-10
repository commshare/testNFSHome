#!/bin/bash
firewall-cmd --permanent --zone=public --add-service=nfs
echo "reload..."
firewall-cmd --reload

echo "nfs restart ..."
systemctl restart nfs-server

echo "done..."
