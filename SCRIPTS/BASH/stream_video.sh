#!/bin/bash

CLIENT_IP=`echo $SSH_CONNECTION | awk '{print $1}'`

echo "Please install netcat on first launch : sudo apt-get netcat"
echo "Copy the following to your host computer console :"
echo "nc -l -p 5000 | mplayer -fps 60 -cache 1024 -"
read -p "Press key when done... " -n1 -s
raspivid -t 0 -b 5000000 -w 640 -h 480 -o - -fps 30 | nc $CLIENT_IP 5000 
