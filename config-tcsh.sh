#!/bin/sh

# .inputrc is only for bash. For tcsh, we need `bindkey`

# intelligent C-p & C-n
bindkey "^N" history-search-forward
bindkey "^P" history-search-backward
