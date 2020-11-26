#!/bin/bash

systemctl stop v2ray
echo "v2ray Stopped"

mv /var/log/v2ray/error.log /var/log/v2ray/error.log.bak
mv /var/log/v2ray/access.log /var/log/v2ray/access.log.bak
touch /var/log/v2ray/error.log
touch /var/log/v2ray/access.log
chmod 666 /var/log/v2ray/error.log
chmod 666 /var/log/v2ray/access.log
echo "Log Files Cleaned"

# this is moved from this script to crontab, so as to keep disabled service froming restarting
# systemctl start v2ray
# echo "v2ray Restarted"
