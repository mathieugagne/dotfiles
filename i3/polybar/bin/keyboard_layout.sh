#!/bin/sh

echo $(setxkbmap -query | grep layout | awk '{print $2}')
