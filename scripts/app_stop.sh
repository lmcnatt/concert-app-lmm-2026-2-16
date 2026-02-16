#!/bin/bash
echo "--- DEBUG START ---"
echo "Current User: $(whoami)"
echo "Path BEFORE nvm: $PATH"

cd /home/ec2-user/app
export NVM_DIR="/home/ec2-user/.nvm" 

echo "Path AFTER nvm: $PATH"
which node || echo "Node not found in path"
which pm2 || echo "PM2 not found in path"
echo "--- DEBUG END ---"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
pm2 stop index.js
