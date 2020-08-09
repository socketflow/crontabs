#!/bin/bash

systemctl stop trojan-go
echo "Trojan-Go Stopped"

mv /var/log/trojan-go/tglog.log /var/log/trojan-go/tglog.log.bak
touch /var/log/trojan-go/tglog.log
chmod 666 /var/log/trojan-go/tglog.log
echo "Trojan-Go Log Files Cleaned"

systemctl start trojan-go
echo "Trojan-Go Restarted"
