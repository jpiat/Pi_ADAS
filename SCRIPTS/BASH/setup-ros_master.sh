#!/bin/bash


MASTER_IP=`echo $SSH_CONNECTION | awk '{print $1}'`
MY_IP=`echo $SSH_CONNECTION | awk '{print $3}'`
export ROS_MASTER_URI=http://${MASTER_IP}:11311
export ROS_IP=${MY_IP}
