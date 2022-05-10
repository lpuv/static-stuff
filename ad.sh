#!/bin/bash
echo "set hostname and /etc/hosts file..."
wait 10
echo "set rdns=false and fix krb5.conf"
wait 10
apt install policykit-1 realmd sssd sssd-tools libnss-sss libpam-sss adcli

realm join -v -U 'leo' --os-name="`uname -o`" --os-version="`uname -rsv`" INTERNAL.LAB --install=/
