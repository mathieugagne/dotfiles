#!/bin/bash

source ~/dotfiles/i3/polybar/.env

inbox=$(curl -sf -u "$HOTMAIL_USER":"$HOTMAIL_PASS" -X "STATUS INBOX (UNSEEN)" imaps://imap-mail.outlook.com/INBOX | tr -d -c "[:digit:]")

if [ "$inbox" ] && [ "$inbox" -gt 0 ]; then
    echo "%{F#fba922} $inbox"
else
    echo ""
fi
