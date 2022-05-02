#!/bin/bash

# This script installs git

sudo apt-get update;
sudo apt-get install git &&
echo "git is installed";
git --version

# TO DO: Take user name and email input and apply commands through bash
echo "use following commands to setup git";
echo "git config --global user.name #name_in_quotes#";
echo "git config --global user.email #github_email_in_quotes#";