#!/bin/bash

roscore &
sleep 2
rosrun raspicam raspicam_node _monochrome:=1 _vflip:=1 _hflip:=1 _width:=960 _height:=720 &
sleep 4
#roslaunch rtimulib_ros rtimulib_ros.launch
rosservice call /camera/start_capture
rosbag record --duration=$2 --buffsize=600 -o $1 --lz4 /camera/image_raw
rosnode kill -a
sleep 2
killall -9 roscore
killall -9 rosmaster
