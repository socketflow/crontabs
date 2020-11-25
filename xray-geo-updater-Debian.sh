#!/bin/bash

cd /usr/local/share/xray/
echo ''
echo '╔═══════════════════════╗'
echo '║ Current Directory is: ║'
echo '║ '$PWD' ║'
echo '╚═════ Step 1 done ═════╝'
echo ''

mv geoip.dat geoip.dat.bak
echo '╔══════════════════════════╗'
echo '║ Old "geoip.dat" Removed. ║'
echo '╚═════ Step 2 done ════════╝'
echo ''

mv geosite.dat geosite.dat.bak
echo '╔════════════════════════════╗'
echo '║ Old "geosite.dat" Removed. ║'
echo '╚═════ Step 3 done ══════════╝'
echo ''

wget https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geoip.dat
chmod 644 geoip.dat
echo '╔════════════════════════════╗'
echo '║ New "geoip.dat" Retrieved. ║'
echo '╚═════ Step 4 done ══════════╝'
echo ''

wget https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geosite.dat
chmod 644 geosite.dat
echo '╔══════════════════════════════╗'
echo '║ New "geosite.dat" Retrieved. ║'
echo '╚═════ Step 5 done ════════════╝'
echo ''

systemctl restart xray
echo ''
echo '╔═════════════════════════╗'
echo '║ xray Service Restarted. ║'
echo '╚═════ Step 6 done ═══════╝'
echo ''
