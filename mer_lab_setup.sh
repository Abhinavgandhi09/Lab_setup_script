# This script clones the mer lab repo and installs all its dependencies

#!/bin/bash
cd $HOME;
git clone https://www.github.com/berkcalli/mer_lab.git &&
echo "Cloned MER LAB REPOSITORY";
cd mer_lab &&
rosdep install --from-paths --ignore-src ros_ws -y &&
echo "INSTALLED DEPENDENCIES";
cd ros_ws &&
catkin_make &&
echo "BUILT REPOSITORY";