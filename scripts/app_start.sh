#!/bin/bash
# Change to your application's directory
cd /home/ec2-user/server/src

npm install
# Start the application using PM2
pm2 start npm --name "react-app" -- start
# Save the PM2 process list
pm2 save
# Generate the startup script
pm2 startup
# Restart PM2 to ensure the application starts on system reboot
pm2 restart all
