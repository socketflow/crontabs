#!/bin/bash

systemctl stop trojan-go
echo "Trojan-Go Stopped"

mv /var/log/trojan-go/tglog.log /var/log/trojan-go/tglog.log.bak
touch /var/log/trojan-go/tglog.log
chmod 666 /var/log/trojan-go/tglog.log
echo "Trojan-Go Log Files Cleaned"

# this is moved from this script to crontab, so as to keep disabled service froming restarting
# systemctl start trojan-go
# echo "Trojan-Go Restarted"
