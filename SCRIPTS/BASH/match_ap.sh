#!/bin/bash


while true; do
while IFS= read -r result_ap
do
while IFS= read -r result_list
do
	if [ $result_ap = $result_list ]
	then
		/usr/bin/switch_wlan_ap.sh
	fi
done < <(cat /etc/wpa_supplicant/wpa_supplicant.conf | grep "\sssid=" | sed 's,ssid=,,g')
done < <(iwlist scanning | grep "ESSID:" | sed 's,ESSID:,,g')
sleep 5
done
