#!/bin/sh

set -e

if ! [ -x "$(command -v nordvpn)" ]; then
  exit 1
fi

nordvpn_status=$(nordvpn status | grep Status | awk '{ print $2 }')

if [ $nordvpn_status = "Connected" ]; then
  echo "%{F#55aa55}%{F-}"
else
  echo "%{F#ff5555}%{F-}"
fi
