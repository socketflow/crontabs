#!/bin/bash

systemctl stop xray
echo "xray Stopped"

mv /var/log/xray/error.log /var/log/xray/error.log.bak
mv /var/log/xray/access.log /var/log/xray/access.log.bak
touch /var/log/xray/error.log
touch /var/log/xray/access.log
chmod 666 /var/log/xray/error.log
chmod 666 /var/log/xray/access.log
echo "Log Files Cleaned"

systemctl start xray
echo "xray Restarted"
