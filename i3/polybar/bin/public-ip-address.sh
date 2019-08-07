#!/bin/sh

ip=$(curl -s 'https://api.ipify.org?format=json' | jq -r ".ip")

echo  $ip
