# Install

curl -sS https://raw.githubusercontent.com/myh-st/github-ce/main/install-gitlab.sh | sudo sh


URL for the EXTERNAL_URL is your hostname 

# Specific Version of GitLab

curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

GITURL=$(hostname)

sudo EXTERNAL_URL="https://$GITURL" yum install -y gitlab-ce-13.8.3-ce.0.el7.x86_64


For more information : https://packages.gitlab.com/gitlab/gitlab-ce
