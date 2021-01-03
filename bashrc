# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# completion
# Define to avoid stripping description in --option=description of './configure --help'
COMP_CONFIGURE_HINTS=1
# Define to avoid flattening internal contents of tar files
COMP_TAR_INTERNAL_PATHS=1
# Any completions you add in ~/.bash_completion are sourced last.
# source bash_completion
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
#msys2
[[ -f /etc/bash_completion ]] && . /etc/bash_completion
# completion for sudo (?)
complete -cf sudo

# history
# append to the history file, don't overwrite it
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

# private bin dirs
if [ -d "$HOME/.bin" ]; then PATH="$HOME/.bin:$PATH"; fi
if [ -d "$HOME/.local/bin" ] ; then PATH="$HOME/.local/bin:$PATH"; fi
if [ -d "$HOME/.bin/aseprite" ]; then PATH="$HOME/.bin/aseprite:$PATH"; fi
if [ -d "${HOME}/.man" ]; then MANPATH="${HOME}/.man:${MANPATH}"; fi
if [ -d "${HOME}/.info" ]; then INFOPATH="${HOME}/.info:${INFOPATH}"; fi
if [ -f "$HOME/.bash/colors" ]; then . "$HOME/.bash/colors"; fi
if [ -f "$HOME/.bash/aliases" ]; then . "$HOME/.bash/aliases"; fi
if [ -f "$HOME/.bash/functions" ]; then . "$HOME/.bash/functions"; fi
export PATH

# misc
# don't wait for job termination notification
set -o notify
# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# gcc colors
export GCC_COLORS='error=01;91:warning=01;95:note=01;96:caret=01;92:locus=01:quote=01'


# forgot
xhost +local:root > /dev/null 2>&1
stty susp undef
# disable C-s
#stty -ixon
# set CTRL-Z to be equal to 'fg'
bind '"\C-z":"fg\015"'
export VISUAL=vim
export EDITOR="$VISUAL"
export PROMPT_DIRTRIM=2
# make fonts in java programs look good
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'   
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

# os specific stuff
if [[ "$(expr substr $(uname -s) 1 10)" == "MSYS_NT-10" ]]; then
    eval "$(dircolors /etc/DIR_COLORS)"
    export PATH="/c/Users/chri/Path:$PATH"
elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]]; then
    eval "$(dircolors /etc/DIR_COLORS)"
    export PATH="/c/Users/chri/Path:$PATH"
elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]]; then
    eval "$(dircolors /etc/DIR_COLORS)"
    export PATH="/c/Users/chri/Path:$PATH"
elif [[ "$(expr substr $(uname -s) 1 10)" == "Linux" ]]; then
    eval "$(dircolors ${HOME}/.dircolors)"
    PROMPT_COMMAND=draw_prompt
else
    echo "WARNING: SHELL/OS NOT SUPPORTED!"
fi

# print message when opening terminal
if command -v cowsay &> /dev/null; then
    if command -v fortune &> /dev/null; then
        fortune -e fortunes | cowsay -f moofasa
    fi
fi

