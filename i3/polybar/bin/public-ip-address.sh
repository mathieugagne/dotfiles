#!/bin/sh

ip=$(curl -s 'https://api.ipify.org?format=json' | jq -r ".ip")
vpn_status=$(~/dotfiles/i3/polybar/bin/nordvpn.sh)

# TODO: If $vpn_status is nil then display globe icon

echo $vpn_status $ip
