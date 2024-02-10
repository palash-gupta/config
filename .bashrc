#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

RANGER_LOAD_DEFAULT_RC=FALSE

PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local curr_exit="$?"

    PS1=' \[\033[1;36m\]\w \[\033[1;32m\]❯ \[\033[00m\]' 

    if [ "$curr_exit" != 0 ]; then
        PS1=' \[\033[1;36m\]\w \[\033[1;91m\]❯ \[\033[00m\]' 
    fi
}


#PS1='\[\033[1;36m\]\u\[\033[00m\]@\[\033[1;36m\]\h \[\033[00m\]\w \$ '
#PS1=' \[\033[1;36m\]\w \[\033[1;32m\]❯ \[\033[00m\]' 

krabby random
echo ""
echo ""

source /home/reiter/.aliases

# have a common working directory for the entire system, new terminals will open at the last accessed location
global_cd () {
    cd $@
    echo $PWD > /tmp/wd
}

cd $(cat /tmp/wd)
alias cd="global_cd"

# Created by `pipx` on 2023-11-18 20:11:15
export PATH="$PATH:/home/reiter/.local/bin"
export PATH=$PATH:/home/reiter/.spicetify
