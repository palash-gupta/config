#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

RANGER_LOAD_DEFAULT_RC=FALSE

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#PS1='\[\033[1;36m\]\u\[\033[00m\]@\[\033[1;36m\]\h \[\033[00m\]\w \$ '
PS1=' \[\033[1;36m\]\w \[\033[1;32m\]❯ \[\033[00m\]' 

pokemon-colorscripts -r --no-title
echo ""

source /home/reiter/.aliases

# Created by `pipx` on 2023-11-18 20:11:15
export PATH="$PATH:/home/reiter/.local/bin"
export PATH=$PATH:/home/reiter/.spicetify
