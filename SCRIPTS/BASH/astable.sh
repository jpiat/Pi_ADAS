#!/bin/bash

gpio mode 7 in
gpio mode 7 up
sleep 1
while true; do
	gpio wfi 7 falling
	for i in {1..10}
	do
	gpio mode 7 out
	gpio write 7 0
	sleep 1
	gpio mode 7 in
	gpio mode 7 up
	sleep 1
	done
done
