#!/bin/bash

gpio mode 7 in
gpio mode 7 up
sleep 1
while true; do
	gpio wfi 7 falling
	gpio mode 7 out
	gpio write 7 0
	mkdir /home/pi/USB_KEY
	sudo mount /dev/sda1 /home/pi/USB_KEY -o umask=0
	/home/pi/capture_bag.sh /home/pi/USB_KEY/ 10
	sudo umount /dev/sda1
	gpio mode 7 in
	gpio mode 7 up
	sleep 1
done
