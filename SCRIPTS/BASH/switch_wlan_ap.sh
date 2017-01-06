#!/bin/bash

cp /etc/network/interfaces_hotspot /etc/network/interfaces
systemctl stop wpa_supplicant.service
ifdown wlan0
ifup wlan0
systemctl start hostapd.service
systemctl start dnsmasq.service
