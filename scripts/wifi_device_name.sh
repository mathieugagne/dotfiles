#!/bin/sh

wifi_device_name=$(nmcli device | grep wifi | awk '{ print $1 }')
echo $wifi_device_name
