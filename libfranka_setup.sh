#!/bin/bash

# This script installs libfranka and frankaros

#### ONLY USE THIS SCRIPT IF SETTING UP THE COMMON COMPUTER FOR THE ROBOT ####
cd $HOME;
sudo apt install ros-melodic-libfranka &&
sudo apt install ros-melodic-franka-ros &&
echo "Installed franka_ros and libfranka";