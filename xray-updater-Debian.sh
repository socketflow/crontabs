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

cp /usr/local/bin/xray /usr/local/bin/xray.bak
echo ''
echo 'old xray backed up'
echo ''

mv xray /usr/local/bin/
echo 'new xray installed'
echo ''

rm /root/xray-dl/*
echo 'xray-dl folder cleared'
echo ''

systemctl restart xray
echo 'xray restarted'
echo ''
