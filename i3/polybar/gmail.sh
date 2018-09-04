#!/bin/bash

source ~/dotfiles/i3/polybar/.env

inbox=$(curl -sf -u "$GMAIL_USER":"$GMAIL_PASS" -X "STATUS INBOX (UNSEEN)" imaps://imap.gmail.com/INBOX | tr -d -c "[:digit:]")

if [ "$inbox" ] && [ "$inbox" -gt 0 ]; then
    echo "$inbox"
else
    echo ""
fi

