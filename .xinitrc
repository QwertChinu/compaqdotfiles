#!/bin/sh

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

setxkbmap -option caps:escape

exec dwm


