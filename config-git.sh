#!/bin/bash

# user
# git config --global user.name "ArthurChiao"
# git config --global user.email "ArthurChiao@users.noreply.github.com"

# alias
git config --global alias.d 'diff --color'
git config --global alias.a 'add -u'

git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.ca 'commit --amend'
git config --global alias.br branch
git config --global alias.st status
git config --global alias.hs 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'

git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

# pretty well format of git history
git config --global alias.g 'log --oneline --graph --all --decorate'
git config --global alias.graph 'log --oneline --graph --all --decorate'
# more graph, provide more information
git config --global alias.mg 'log --graph --all --decorate'

# editor: use vim
git config --global core.editor vim

# turn off SSL verification
# this can workaround "server certificate verification failed" problem
# git config --global http.sslVerify false
