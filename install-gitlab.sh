#!/bin/bash
GITURL=$(hostname)
sudo yum install -y curl policycoreutils-python openssh-server perl
sudo systemctl enable sshd
sudo systemctl start sshd

if [[ $(rpm -qa firewall >/dev/null 2>&1) -ne 0 ]]; then
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld
fi

sudo yum install postfix -y
sudo systemctl enable postfix
sudo systemctl start postfix

curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

sudo EXTERNAL_URL="https://$GITURL" yum install -y gitlab-ce
