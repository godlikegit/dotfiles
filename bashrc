#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias cls='clear'
alias ls='ls --color=auto'
alias lsa='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias ld='ls -d --color=auto */'
alias lld='ls -ld --color=auto */'
alias llad='ls -lad --color=auto */'

alias vi='vim'
alias vbash='vim ~/.bashrc'
alias vvim='vim ~/.vimrc'
alias vtmux='vim ~/.tmux.conf'
alias rlbash='. ~/.bashrc'

alias psg='ps ux|grep'
alias psag='ps aux|grep'

alias stl='systemctl'
alias stle='systemctl enable'
alias stld='systemctl disable'
alias stlre='systemctl reenable'
alias stls='systemctl status'
alias stlst='systemctl start'
alias stlsp='systemctl stop'
alias stlrst='systemctl restart'
alias stlrld='systemctl reload'

alias grep="grep -rnE -color"
alias mkdir="mkdir -pv"
alias cp="cp -v"
alias cpr="cp -r"
alias mv="mv -v"
alias chmod="chmod -v --preserve-root"
alias chmod="chown -v --preserve-root"
alias df="df -h"
alias du="du -h"
alias last="last -a"
alias free="free -m"
#alias lftp="lftp user:pwd@ftpip"
#alias ln="ln -s"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias -- -="cd -"

alias findf="find -type f -name"
alias findd="find -type d -name"

