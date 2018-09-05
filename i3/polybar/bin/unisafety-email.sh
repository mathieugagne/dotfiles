#!/bin/bash

source ~/dotfiles/i3/polybar/.env

inbox=$(curl -sf -u "$UNISAFETY_USER":"$UNISAFETY_PASS" -X "STATUS INBOX (UNSEEN)" imaps://mail.unisafety.com/INBOX | tr -d -c "[:digit:]")

if [ "$inbox" ] && [ "$inbox" -gt 0 ]; then
    echo "$inbox"
else
    echo ""
fi

