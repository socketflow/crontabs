#!/bin/bash

/root/.acme.sh/acme.sh --installcert -d [domain.com] --ecc  --fullchain-file /usr/local/etc/xray/xray.crt  --key-file /usr/local/etc/xray/xray.key
echo "New Certificates Installed to xray"

chmod 644 /usr/local/etc/xray/xray.crt
chmod 644 /usr/local/etc/xray/xray.key
echo "Read Permission Granted"

# systemctl restart xray
# echo "xray Restarted"

