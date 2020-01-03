#!/bin/bash

echo "Generating bash completion for k (alias of kubectl) ..."

FILE="/etc/bash_completion.d/k"

if [ -f $FILE ]; then
    echo "File $FILE exists, override it? (y/n)"
    read confirm

    [ $confirm == "n" ] && exit 1
fi

echo "Generating completion file ..."
kubectl completion bash > $FILE

echo "Making changes ..."
sed -i 's/-F __start_kubectl kubectl/-F __start_kubectl k/g' $FILE

echo "Done"
