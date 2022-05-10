#!/bin/bash
echo "set hostname and /etc/hosts file..."
read  -n 1 -p "ready?" mainmenuinput
echo "set rdns=false and fix krb5.conf"
read  -n 1 -p "ready?" mainmenuinput
apt install policykit-1 realmd sssd sssd-tools libnss-sss libpam-sss adcli

realm join -v -U 'leo' --os-name="`uname -o`" --os-version="`uname -rsv`" INTERNAL.LAB --install=/ --computer-ou="CN=Servers,DC=internal,DC=lab"

cat <<EOT >> /etc/sssd/sssd.conf
dyndns_update = true
dyndns_refresh_interval = 43200
dyndns_update_ptr = true
dyndns_ttl = 3600
EOT

systemctl restart sssd
