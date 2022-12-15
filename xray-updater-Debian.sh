#!/bin/bash

INSTALL_VERSION="v1.5.1"

mkdir /root/xray-dl && cd /root/xray-dl
echo ''
echo '1. current folder is '$PWD''
echo ''

wget https://github.com/XTLS/Xray-core/releases/download/$INSTALL_VERSION/Xray-linux-64.zip
echo '2. New Xray Downloaded'
echo ''

unzip Xray-linux-64.zip
echo ''
echo '3. New Xray Extracted'
echo ''

chmod +x xray
echo '4. New xray execution previlege provided'
echo ''

cp /usr/local/bin/xray /usr/local/bin/xray.bak
echo '5. old xray backed up'
echo ''

mv xray /usr/local/bin/ && cd /root
echo '6. new xray installed'
echo ''

rm /root/xray-dl/* && rm -d /root/xray-dl
echo '7. xray-dl folder cleared'
echo ''

systemctl restart xray
echo '8. xray restarted'
echo ''
