#!/bin/bash

/root/.acme.sh/acme.sh --installcert -d [domain.com] --ecc  --fullchain-file /usr/local/etc/v2ray/v2ray.crt  --key-file /usr/local/etc/v2ray/v2ray.key
echo "New Certificates Installed to v2ray"

systemctl restart v2ray
echo "v2ray Restarted"
