# ~/.bashrc: executed by bash(1) for non-login shells.
# 
# path to get zip of all to switch.
# wget https://github.com/CumulusNetworks/customer-scripts/archive/master.zip
# 
# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# umask 022
if [ "$PS1" ]; then    
    set -o emacs
    stty erase "^?"
fi
# Source global definitions first
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Change the window title of X terminals 
case $TERM in
    xterm*|rxvt*|Eterm)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
        PS1="\u@\[\e[32;1m\]\h\[\e[0m\]:\w\\$ "
        ;;
    screen)
        PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/     ~}\033\\"'
        PS1="\u@\[\e[32;1m\]\h\[\e[0m\]:\w\\$ "
        ;;
    linux)
        PS1="\u@\[\e[32;1m\]\h\[\e[0m\]:\w\\$ "
        ;;
esac
#cumulus 2013-08-20 09:45:40 - - - - - - - - - - - - - - - - - - - -
 PATH="$HOME/bin:$PATH"
 export PATH
 PS1=" \n\u@\[\e[31;1m\]\h\[\e[0m\]:\w\\$ "
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias l='ls $LS_OPTIONS -l'
 alias ll='ls $LS_OPTIONS -lA'
 alias lt='ls  -gGrt'
 alias lz='ls  -gGrS'
 alias lsd='ls  -d   */ .*/'
 alias sln='lldpctl | egrep "Inter|SysN|Mgm|PortDes"'
 alias bcm='/usr/lib/cumulus/bcmcmd'
 alias du1='du -h  --max-depth=1'
 alias duk='du -k  --max-depth=1 | sort -n'
 alias df='df -h'
 alias cl='clear'
 alias ebnat='ebtables -t nat -L'
 alias ipl='iptables -L -v'
 alias msb='mstpctl showbridge'
 alias msp='mstpctl showport'
 alias shint='cl-show interface'
 alias shb='cl-show interface bond'
