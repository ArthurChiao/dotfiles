#!/bin/sh

for DOTFILE in `find /home/xxx/dotfiles`
do
    [ -f “$DOTFILE” ] && source “$DOTFILE”
done
