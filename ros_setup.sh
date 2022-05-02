#!/bin/bash


# This script installs ROS NOETIC
cd $HOME;

# Sources and key setup
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' &&
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 &&
echo "Added Sources and Keys";

# Install
sudo apt update &&
sudo apt install ros-noetic-desktop-full &&
echo "Installed ROS Noetic";

# Environment Setup
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc &&
source ~/.bashrc &&
echo "Environment Setup Complete";

# Install Dependencies
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential &&
sudo apt install python-rosdep &&
sudo rosdep init &&
rosdep update &&
echo "Installation Complete! Please check your install using roscore and turtlesim tutorials";
