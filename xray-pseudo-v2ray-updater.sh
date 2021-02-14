#!/bin/bash

INSTALL_VERSION="v1.3.0"

cd /root/xray-dl
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

mv xray v2ray
echo '5. New Pseudo v2ray created'
echo ''

cp /usr/local/bin/v2ray /usr/local/bin/v2ray.bak
echo '6. old pseudo-v2ray backed up'
echo ''

mv v2ray /usr/local/bin/ && cd /root
echo '7. new pseudo v2ray installed'
echo ''

rm /root/xray-dl/*
echo '8. xray-dl folder cleared'
echo ''

systemctl restart v2ray
echo '9. pseudo-v2ray restarted'
echo ''
