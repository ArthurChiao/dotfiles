#!/bin/bash

echo "Generating bash completion for dk (alias of docker) ..."

SRC_FILE="/usr/share/bash-completion/completions/docker"
DST_FILE="/etc/bash_completion.d/dk"

if [ ! -f $SRC_FILE ]; then
    echo "Error: $SRC_FILE not found"
    exit 1
fi

if [ -f $DST_FILE ]; then
    echo "File $DST_FILE exists, override it? (y/n)"
    read confirm

    [ $confirm == "n" ] && exit 1
fi

echo "Generating completion file ..."
cp $SRC_FILE $DST_FILE

echo "Making changes ..."
sed -i '/complete -F _docker/ s/.*/complete -F _docker dk/g' $DST_FILE

echo "Done"
