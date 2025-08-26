# if not running interactively, don't do anything
[[ $- != *i* ]] && return




### completion
# source bash_completion (second one is for MSYS2)
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
[[ -f /etc/bash_completion ]] && . /etc/bash_completion
# completion for sudo
complete -cf sudo



### history
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=10000
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well



### env vars

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export ANDROID_HOME="$XDG_DATA_HOME/android"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:range1=32:range2=34:locus=01:'\
'quote=01:path=01;36:fixit-insert=32:fixit-delete=31:'\
'diff-filename=01:diff-hunk=32:diff-delete=31:diff-insert=32:'\
'type-diff=01;32'
export VISUAL=vim
export EDITOR="$VISUAL"
export PROMPT_DIRTRIM=2
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export VIMINIT="set nocp | source ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc"
# export VIMINIT="if has(\"nvim\") | so ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/init.vim | else | set nocp | so ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc | endif"
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export WINEPREFIX="$XDG_DATA_HOME"/wine
export KDEHOME="$XDG_CONFIG_HOME"/kde

[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.local/bin/aseprite" ]] && PATH="$HOME/.local/bin/aseprite:$PATH"
[[ -d "$HOME/.local/bin/clion/bin" ]] && PATH="$HOME/.local/bin/clion/bin":$PATH
[[ -d "$HOME/.local/bin/melonds" ]] && PATH="$HOME/.local/bin/melonds":$PATH
[[ -d "${HOME}/.man" ]] && MANPATH="${HOME}/.man:${MANPATH}"
[[ -d "${HOME}/.info" ]] && INFOPATH="${HOME}/.info:${INFOPATH}"
export PATH



### aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -alF --group-directories-first'
alias la='ls -A'
alias l='ls -CF'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep -n -I --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cp='cp -i'
alias df='df -h'
alias du='du -h'
alias mv='mv -i'
alias less='less -Rc' # raw control characters, put stuff at top
alias whence='type -a' # where, of a sort
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias py='python3'
alias python='python3'
alias doc="cd ~/Documenti"
alias dl="cd ~/Scaricati"
alias h="cd ~"
alias gits="git status"
alias unixtime="date +%s"
alias bc="bc -q"
alias gdb="gdb -q -n -x $XDG_CONFIG_HOME/gdb/init"
alias gcc-asm="gcc -std=c17 -S -Wall -Wextra -masm=intel -fno-asynchronous-unwind-tables"
alias g++-asm="g++ -std=c++20 -S -Wall -Wextra -masm=intel -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti"
# add an "alert" alias for long running commands. Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias easyrpg="easyrpg-player --window"
alias ip="ip -c"
alias yt-dlp="yt-dlp_linux -o '%(title)s.%(ext)s'"
alias mp3-dl="yt-dlp -x --audio-format mp3 --audio-quality 0 -o '%(title)s.%(ext)s'"
alias mus-dl="yt-dlp -x --audio-quality 0 -o '%(title)s.%(ext)s'"
alias pl-dl="yt-dlp -x --audio-quality 0 -o '%(playlist_index)s. %(title)s.%(ext)s'"
alias units="units --history \"$XDG_DATA_HOME/units_history\""
alias wget="wget --hsts-file=\"$XDG_DATA_HOME/wget-hsts\""
alias dosbox="dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox.conf"


### functions

# change and list directory
cdl() {
    cd "$1" && ls
}

# xdg-open but quiet
open() {
    xdg-open "$1" 2> /dev/null
}

# make directory and change into it
ccd() {
    mkdir "$@";
    if [ "$1" = "-p" ]; then
        cd "$2";
    else
        cd "$1";
    fi
}

# functions for outputting text in the prompt.
# using "echo" is a hack.
function ps1_ssh {
    if [[ "${SSH_CLIENT}" || "${SSH_TTY}" ]]; then
        printf " $(ip route get 1 | tr -s ' ' | cut -d' ' -f7) "
    fi
}

function ps1_read_only {
    if [ ! -w "$PWD" ]; then
        printf ' '
    fi
}

function ps1_git {
    local branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [ -n "$branch" ]; then
        if [ -n "$(git status --porcelain 2> /dev/null)" ]; then
            printf '\033[1;93m'
        else
            printf '\033[1;92m'
        fi
        printf "$branch "
    fi
}

function draw_prompt {
    local ERRCODE="$?"
    PS1_BLACK='\[\033[01;90m\]'
    PS1_RED='\[\033[01;91m\]'
    PS1_GREEN='\[\033[01;92m\]'
    PS1_YELLOW='\[\033[01;93m\]'
    PS1_BLUE='\[\033[01;94m\]'
    PS1_PURPLE='\[\033[01;95m\]'
    PS1_CYAN='\[\033[01;96m\]'
    PS1_WHITE='\[\033[01;97m\]'
    PS1=""
    PS1+=$PS1_CYAN'\u@\h ' # user@host
    PS1+=$PS1_BLUE'\w '    # directory
    PS1+=$PS1_PURPLE
    PS1+="\$(ps1_ssh)"
    PS1+="\$(ps1_git)"
    PS1+=$PS1_RED
    PS1+="\$(ps1_read_only)"
    if [ $ERRCODE != 0 ]; then
        PS1+="$ERRCODE"
    fi
    PS1+='\[\033[00m\]\n$ '
}

# colors() {
#     local fgc bgc vals seq0

#     printf "Color escapes are %s\n" '\e[${value};...;${value}m'
#     printf "Values 30..37 are \e[33mforeground colors\e[m\n"
#     printf "Values 40..47 are \e[43mbackground colors\e[m\n"
#     printf "Value 1 gives a \e[1mbold-faced look\e[m\n\n"

#     # foreground colors
#     for fgc in {30..37}; do
#         # background colors
#         for bgc in {40..47}; do
#             fgc=${fgc#37} # white
#             bgc=${bgc#40} # black
#             vals="${fgc:+$fgc;}${bgc}"
#             vals=${vals%%;}
#             seq0="${vals:+\e[${vals}m}"
#             printf "  %-9s" "${seq0:-(default)}"
#             printf " ${seq0}TEXT\e[m"
#             printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
#         done
#      echo; echo
#      done
# }

extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

dec2bin() {
    for i in $@
    do
        echo "obase=2; $i" | bc
    done
}

dec2hex() {
    for i in $@
    do
        echo "obase=16; $i" | bc
    done
}

hex2dec() {
    for i in $@
    do
        echo "ibase=16; $i" | bc
    done
}

bin2dec() {
    for i in $@
    do
        echo "ibase=2; $i" | bc
    done
}

hex2bin() {
    for i in $@; do
        echo "ibase=16; obase=2; $i" | bc
    done
}

bin2hex() {
    for i in $@; do
        echo "ibase=2; obase=16; $i" | bc
    done
}

mdless() {
    mdcat $1 | less
}



### misc

# don't wait for job termination notification
set -o notify

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set CTRL-Z to be equal to 'fg'. yes, both of these are needed
stty susp undef
bind '"\C-z":"fg\015"'

# run jabba script if present
[ -s "/home/chrg/.jabba/jabba.sh" ] && source "/home/chrg/.jabba/jabba.sh"

# define to avoid stripping description in --option=description of './configure --help'
COMP_CONFIGURE_HINTS=1

# define to avoid flattening internal contents of tar files
COMP_TAR_INTERNAL_PATHS=1

# dircolors stuff
# eval "$(dircolors ${HOME}/.dircolors)"

# define for a custom prompt
PROMPT_COMMAND=draw_prompt

# enable core dumps
ulimit -c unlimited

# warn for mail
if [[ -s /var/spool/mail/$(whoami) ]]; then
    echo "You have mail."
fi

