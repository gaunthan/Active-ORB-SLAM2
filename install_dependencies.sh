#!/usr/bin/env sh

# Install essential dependencies for building Active-ORB-SLAM2.
#   - ROS (accompany with OpenCV)
#   - Pangolin
#   - python-opencv
#   - Eigen 3.3.4
#   - OMPL
#   - OctoMap 1.7.2
#   - Kinect V1 (XBox 360) driver

sudo apt-get install cmake -y
sudo apt-get install libglew-dev -y

# Install ROS
curl -sLf https://raw.githubusercontent.com/gaunthan/visual-robot/master/install/install_ros.sh | bash

# Install Pangolin
curr_dir=`pwd`
cd /tmp
git clone https://github.com/gaunthan/Pangolin
cd Pangolin
mkdir build
cd build
cmake ..
make
sudo make install
cd "$curr_dir"

# Install OpenCV python binding
sudo apt install python-opencv python3-opencv -y

# Install Eigen3
curr_dir=`pwd`
cd /tmp
wget http://bitbucket.org/eigen/eigen/get/3.3.4.tar.gz
tar xzvf 3.3.4.tar.gz
cd eigen-eigen-*
mkdir build
cd build
cmake ..
sudo make install
cd "$curr_dir"

# Install OMPL
sudo apt install libompl-dev -y

# Install OctoMap
curr_dir=`pwd`
cd ./Thirdparty/octomap
mkdir -p build
cd build
cmake ..
make
sudo make install
cd "$curr_dir"

sudo apt install ros-*-octomap-ros -y

# Install Kinect V1 (XBox 360) driver
sudo apt install ros-melodic-openni-camera ros-melodic-openni-launch -y
