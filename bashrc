# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# completion
# define to avoid stripping description in --option=description of './configure --help'
COMP_CONFIGURE_HINTS=1
# define to avoid flattening internal contents of tar files
COMP_TAR_INTERNAL_PATHS=1
# source bash_completion (second one is for MSYS2)
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
[[ -f /etc/bash_completion ]] && . /etc/bash_completion
# completion for sudo
complete -cf sudo

# history
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

[[ -d "$HOME/.bin" ]] && PATH="$HOME/.bin:$PATH"
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.bin/aseprite" ]] && PATH="$HOME/.bin/aseprite:$PATH"
[[ -d "$HOME/.bin/clion/bin" ]] && PATH="$HOME/.bin/clion/bin":$PATH
[[ -d "$HOME/.bin/melonds" ]] && PATH="$HOME/.bin/melonds":$PATH
[[ -d "${HOME}/.man" ]] && MANPATH="${HOME}/.man:${MANPATH}"
[[ -d "${HOME}/.info" ]] && INFOPATH="${HOME}/.info:${INFOPATH}"
[[ -f "${HOME}/.cargo/env" ]] && source "$HOME/.cargo/env"
[[ -f "$HOME/.bash/aliases" ]] && . "$HOME/.bash/aliases"
[[ -f "$HOME/.bash/functions" ]] && . "$HOME/.bash/functions"
export PATH

# misc
# don't wait for job termination notification
set -o notify
# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# forgot
# xhost +local:root > /dev/null 2>&1
# set CTRL-Z to be equal to 'fg'
stty susp undef
bind '"\C-z":"fg\015"'
export GCC_COLORS='error=01;91:warning=01;95:note=01;96:caret=01;92:locus=01:quote=01'
export VISUAL=vim
export EDITOR="$VISUAL"
export PROMPT_DIRTRIM=2
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

OSNAME=$(expr substr $(uname -s) 1 10)
if [[ "$OSNAME" == "MSYS_NT-10" || "$OSNAME" == "MINGW64_NT" || "$OSNAME" == "MINGW32_NT" ]]; then
    eval "$(dircolors /etc/DIR_COLORS)"
    export PATH="/c/Users/chri/Path:$PATH"
elif [[ "$OSNAME" == "Linux" ]]; then
    eval "$(dircolors ${HOME}/.dircolors)"
    PROMPT_COMMAND=draw_prompt
else
    echo "WARNING: SHELL/OS NOT SUPPORTED!"
fi

if [[ $(command -v cowsay > /dev/null && command -v fortune > /dev/null) -eq 0 ]]; then
    fortune -e fortunes | cowsay -f moofasa
fi
