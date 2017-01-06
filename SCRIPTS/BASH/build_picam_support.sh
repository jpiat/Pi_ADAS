#!/bin/bash


cd ros_catkin_ws/src/raspicam_node/ ; git commit -m "Saving before pulling";git pull ; cd ../../ ; sudo ./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/kinetic --pkg raspicam
