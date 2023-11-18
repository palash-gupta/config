#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='\[\033[1;36m\]\u\[\033[00m\]@\[\033[1;36m\]\h \[\033[00m\]\w \$ '
PS1=' \[\033[1;36m\]\w \[\033[1;32m\] \[\033[00m\]' 

neofetch --ascii_distro Arch_small --disable cpu gpu theme icons resolution kernel title model underline cols

alias bpgcwifi=/home/reiter/scripts/wificonnect.sh
alias git-push-all=/home/reiter/scripts/git-push-all.sh
alias mobile-hotspot=/home/reiter/scripts/wifi.sh
