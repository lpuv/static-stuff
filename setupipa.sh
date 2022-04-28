apt update
apt install freeipa-client
cat <<EOT >> /etc/ssh/sshd_config
AuthorizedKeysCommand /usr/bin/sss_ssh_authorizedkeys
AuthorizedKeysCommandUser root
EOT

ipa-client-install --mkhomedir --no-ntp

systemctl restart sshd
