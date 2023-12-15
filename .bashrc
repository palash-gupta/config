#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='\[\033[1;36m\]\u\[\033[00m\]@\[\033[1;36m\]\h \[\033[00m\]\w \$ '
PS1=' \[\033[1;36m\]\w \[\033[1;32m\]❯ \[\033[00m\]' 

if [[ $RANDOM -gt 16383 ]]; then
    colorscript random
else
    pokemon-colorscripts -r --no-title
fi
echo ""

alias pacman="pacman --color=auto"
alias yay="yay --color=auto"

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias la='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias ll='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ls='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l=ls
alias ld='exa -D --color=always --icons'

alias sl='sl -e -a -F'

alias c="bat"
alias v="vim"

alias code="codium"

alias smallfetch="neofetch --ascii_distro Arch_small --disable cpu gpu theme icons resolution kernel title model underline cols"
alias bpgcwifi=/home/reiter/scripts/wifi/wificonnect.sh
alias mobile-hotspot=/home/reiter/scripts/wifi/wifi.sh
alias git-push-all=/home/reiter/scripts/git-utils/git-push-all.sh

alias camera="vlc v4l2://:input-slave=alsa://:v4l-vdev="/dev/video0""

# Created by `pipx` on 2023-11-18 20:11:15
export PATH="$PATH:/home/reiter/.local/bin"
export PATH=$PATH:/home/reiter/.spicetify
