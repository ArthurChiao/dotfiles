#!/bin/bash

# 0. bashrc
echo "setup bashrc ..."
cp .bashrc ~

# 1. inputrc
echo "setup inputrc ..."
cp .inputrc ~

# bind 2&> /dev/null
# if [ !$? ]; then
#     echo "bind found"
#     cp .inputrc ~ && bind ~/.inputrc
# else
#     echo "bind not found, using bindkey ..."
#     bindkey "^N" history-search-forward
#     bindkey "^P" history-search-backward
# fi

# 2. aliases
echo "setup aliases ..."
cp .alias ~ # && source ~/.alias

# 3. setup git aliases
echo "setup git aliases ..."
sh config-git.sh

# 4. setup tmux aliases
echo "setup tmux aliases ..."
cp .tmux.conf ~ # && tmux source-file ~/.tmux.conf

############################################################################
echo ""
echo ""
echo "please execute following commands manually to finish installation:"
echo "source ~/.bashrc"
echo "bind ~/.inputrc"
echo "tmux source-file ~/.tmux.conf"
############################################################################
