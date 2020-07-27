#!/bin/bash

# This script disables freq scaling. This allows for realtime communiation between the robot and host computer

sudo apt install cpufrequtils &&
sudo systemctl disable ondemand &&
sudo systemctl enable cpufrequtils &&
sudo sh -c 'echo "GOVERNOR=performance" > /etc/default/cpufrequtils' &&
sudo systemctl daemon-reload &&
sudo systemctl restart cpufrequtils &&
echo "CPU Frequency Scaling disabled";
cpufreq-info;