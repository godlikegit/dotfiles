#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias c='clear'
alias cls='clear'
alias l='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias ld='ls -d --color=auto */'
alias lld='ls -ld --color=auto */'
alias llad='ls -lad --color=auto */'

alias vi='vim'
alias vbash='vim ~/.bashrc'
alias vvim='vim ~/.vimrc'
alias vtmux='vim ~/.tmux.conf'
alias vgit='vim ~/.gitconfig'
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

#alias chmod="chmod -v --preserve-root"
#alias chmod="chown -v --preserve-root"
alias cp="cp -v"
alias cpr="cp -r"
alias df="df -h"
alias du="du -h"
alias free="free -m"
alias g='git'
#alias grep="grep -rnE -color"
alias last="last -a"
alias mkdir="mkdir -pv"
alias mv="mv -v"
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

