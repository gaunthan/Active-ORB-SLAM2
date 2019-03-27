export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:`pwd`/Examples/ROS/ORB_SLAM2
rosrun ORB_SLAM2 RGBD Vocabulary/ORBvoc.bin Examples/RGB-D/TUM1.yaml
