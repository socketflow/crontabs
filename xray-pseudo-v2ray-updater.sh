#!/bin/bash

cd xray-dl
echo 'Current Directory is: '$PWD''
echo ''

wget https://github.com/XTLS/Xray-core/releases/download/v1.1.5/Xray-linux-64.zip
echo 'New Xray Downloaded'
echo ''

unzip Xray-linux-64.zip
echo 'New Xray Extracted'
echo ''

chmod +x xray
echo 'New xray execution previlege provided'
echo ''

mv xray v2ray
echo 'New Pseudo v2ray created'
echo ''

cp /usr/local/bin/v2ray /usr/local/bin/v2ray.bak
echo 'old pseudo-v2ray backed up'
echo ''

mv v2ray /usr/local/bin/
echo 'new pseudo v2ray installed'
echo ''

rm /root/xray-dl/*
echo 'xray-dl folder cleared'
echo ''

systemctl restart v2ray
echo 'pseudo v2ray restarted'
echo ''
