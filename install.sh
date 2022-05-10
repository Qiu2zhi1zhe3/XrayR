#!/bin/bash
apt update -y && apt upgrade -y
apt install git wget curl unzip tar cron socat -y
curl https://get.acme.sh | sh
rm -rf /etc/XrayR
git clone https://github.com/Qiu2zhi1zhe3/XrayR.git /etc/XrayR/
cp -f /etc/XrayR/XrayR.service /etc/systemd/system/
ln -s /etc/XrayR/XrayR.sh /usr/bin/XrayR
ln -s /etc/XrayR/XrayR.sh /usr/bin/xrayr
chmod +x /usr/bin/XrayR
chmod +x /usr/bin/xrayr
chmod +x /etc/XrayR/XrayR
systemctl daemon-reload
systemctl stop XrayR
systemctl enable XrayR
systemctl start XrayR