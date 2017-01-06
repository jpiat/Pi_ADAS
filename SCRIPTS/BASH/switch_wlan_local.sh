#!/bin/bash

systemctl stop hostapd.service
systemctl stop dnsmasq.service
#systemctl disable hostapd.service
#systemctl disable dnsmasq.service
cp /etc/network/interfaces_local /etc/network/interfaces
ifdown wlan0
ip addr flush dev wlan0
pkill dhclient
pkill wpa_supplicant
rmmod brcmfmac
modprobe brcmfmac
sleep 2
#ifup wlan0
#systemctl start wpa_supplicant.service
