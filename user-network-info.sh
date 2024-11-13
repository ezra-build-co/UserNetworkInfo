#!/bin/bash

echo "User Info"
echo "- User: $USER"
echo "- Date: $(date)"
echo "Network Information"
echo "- Network Name: $(iw dev | grep ssid | awk '{print $2}')"
echo "- IP address: $(hostname -I)"
echo "- Mac Address: $(ifconfig | grep -A 10 wlan0 | grep ether | awk {'print $2'})"
echo "- Range: $(netstat -ie | awk '/netmask / {print $4}' | sed -n '2p')"
echo "- Gateway: $(ip route | awk '/default/ {print $3}')"
echo "- Broadcast: $(ifconfig | grep broadcast | awk {'print $6'})"
