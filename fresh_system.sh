#!/bin/bash

# This script installs everything required for running the panda robot as well as the vs code editor
# This script will also configure git and clone mer lab repo
# To finish git configuration use commands at the end of the git_install.sh
# These commands will also be printed to your console

chmod u+x git_install.sh &&
chmod u+x ros_setup.sh &&
chmod u+x mer_lab_setup.sh &&
chmod u+x vs_code_install.sh &&
chmod u+x dis_fre_scaling.sh &&

./git_install.sh &&
./ros_setup.sh &&
./mer_lab_setup.sh &&
./vs_code_install.sh &&
./dis_fre_scaling.sh &&

echo "Setup Complete";