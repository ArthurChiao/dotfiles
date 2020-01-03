dotfiles
=================

Configuration files for my working environments.

This project contains the configuration files for my working environments.
Including:

* bash (ps1/color/alias/histsize)
* inputrc (`C-p` and `C-n`, one of my favourites)
* tmux
* git

`vim` configuration is maintained standalone,
visit [here](https://github.com/arthurchiao/vim_awesome) if you are interested.

# Custome Install

##  bash

1. alias

    ```shell
    $ cp bashrc ~/.bashrc && source ~/.bashrc
    ```

    Now try `l`, `ll`, `la`, `lsd` (only list directory) commands!

1. inputrc (`C-p`, `C-n`)

    Detect which shell you are using by `echo $0`. Most likely, it's `bash`.

    For `bash`, run

    ```shell
    $ cp inputrc ~/.inputrc && bind -f ~/.inputrc
    ```

    For `tcsh` or `zsh`, run

    ```shell
    $ bindkey "^P" history-beginning-search-backward
    $ bindkey "^N" history-beginning-search-forward
    ```

    Now you can use `Ctrl+p` (last command) and `Ctrl+n` (next command)
    for history command matching (searching).

## git configurations

Configure git global environment:
```shell
$ sh config-git.sh
```

Create git `.git-credentials` file if reluctant to enter accout and password
every time pushing commits to github:

```shell
$ vim ~/.git-credentials

# add your account info into credential file
https://{username}:{password}@github.com

$ git config --global credential.helper store

# if successful, you should see [credential] field in ~/.gitconfig
$ cat ~/.git-config

# In the end, restart bash to make the configuration effective
```

## tmux configurations

```shell
$ tmux -V # check version
$ mv tmux.conf ~/.tmux.conf      # for tmux 2.0
$ mv tmux.conf-2.9 ~/.tmux.conf  # for tmux 2.1+

# start tmux session
$ tmux
$ tmux source-file ~/.tmux.conf
```

My [tmux cheat-sheet](https://github.com/ArthurChiao/cheat-sheets/blob/master/tmux.md)

## zsh

```shell
$ cp arthurchiao.zsh-theme ~/.oh-my-zsh/themes
$ mv ~/.zshrc ~/.zshrc-back && cp zshrc ~/.zshrc && source ~/.zshrc
```
