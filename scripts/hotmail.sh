#!/bin/bash

source ~/dotfiles/polybar/.env

inbox=$(curl -sf -u "$HOTMAIL_USER":"$HOTMAIL_PASS" -X "STATUS INBOX (UNSEEN)" imaps://imap-mail.outlook.com/INBOX | tr -d -c "[:digit:]")

if [ "$inbox" ] && [ "$inbox" -gt 0 ]; then
    echo "$inbox"
else
    echo ""
fi
