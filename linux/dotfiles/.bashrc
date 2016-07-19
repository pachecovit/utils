# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
shopt -s checkwinsize
shopt -s histappend

EDITOR=vim
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTTIMEFORMAT="%Y%m%d %H:%M:%S "
TERM=screen-256color

PS1="\[\033[01;32m\]\u \[\033[01;34m\]\w\[\033[00m\]\n$ "

alias ls="ls --color=auto"
alias less="less -R"
alias grep="grep --color=always"
