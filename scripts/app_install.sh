#!/bin/bash
sudo yum install libatomic -y

cd /home/ec2-user/app
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

npm install
npm install -g pm2
