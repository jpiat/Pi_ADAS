#!/bin/bash

gpio mode 0 in
gpio mode 0 up
sleep 1
if [ $(gpio read 0) -eq "1" ]
then
	/usr/bin/switch_wlan_ap.sh
else
	/usr/bin/switch_wlan_local.sh
fi
while true; do
	gpio wfi 0 both
	sleep 1
	if [ $(gpio read 0) -eq "1" ]
	then
		/usr/bin/switch_wlan_ap.sh
	else
		/usr/bin/switch_wlan_local.sh
	fi
	sleep 10
done
