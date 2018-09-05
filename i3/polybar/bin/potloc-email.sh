#!/bin/bash

source ~/dotfiles/i3/polybar/.env

inbox=$(curl -sf -u "$POTLOC_USER":"$POTLOC_PASS" -X "STATUS INBOX (UNSEEN)" imaps://imap.gmail.com/INBOX | tr -d -c "[:digit:]")

if [ "$inbox" ] && [ "$inbox" -gt 0 ]; then
    echo "$inbox"
else
    echo ""
fi

