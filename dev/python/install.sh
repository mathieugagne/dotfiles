#!/usr/bin/env sh

# http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-linux.html
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
rm get-pip.py

# AWS & Beanstalk
pip install awsebcli --upgrade --user
pip install awscli --upgrade --user

# Other useful tools
pip install pgcli --upgrade --user
