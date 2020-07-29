# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


#PS1 (prompt)
PROMPT_DIRTRIM=2
PS1='${debian_chroot:+($debian_chroot)}'    # chroot stuff
PS1+='\[\033[01;32m\]\u@\h '                # user@host
PS1+='\[\033[01;34m\]\w '                   # directory
PS1+='\[\033[01;35m\]'
PS1+="\$(ps1_ssh)"
# PS1+='\[\033[1;33m\]'
PS1+="\$(ps1_git)"
PS1+='\[\033[1;31m\]'
PS1+="\$(ps1_read_only)"
#PS1+='\[\033[00m\]$ '                       # $
PS1+='\[\033[00m\]\n$ '                      # $ with newline

# If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash/aliases ]; then
    . ~/.bash/aliases
fi

if [ -f ~/.bash/functions ]; then
    . ~/.bash/functions
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

stty susp undef
bind '"\C-z":"fg\015"'

#if [ "$TERM" != "linux" ]; then
#    source ~/.bash/pureline ~/.bash/pureline.conf
#fi

export PATH="$PATH:/home/chri/bin:/home/chri/.local/bin:/home/chri/bin/platform-tools:/home/chri/bin/cava"

#printf "\nData e ora: "
#date
fortune -e fortunes | cowsay

# Disable C-s
#stty -ixon


# These will be the default colors for each terminal, i'm putting them
# here so I'll be able to find them later when I'll switch
#
# foreground: E1EFFF
# background: 2D2B55/141C21/292D3E
# 
# black: 000000 7F7F7F
# 
# red: CD0000 FD000D
#
# green: 00CD00 00FF00
#
# yellow: CDCD00 FFEE80
#
# blue: CD5252 B362FF
#
# magenta: CD00CD FB64FF
#
# cyan: 00CDCD 43FFFF
#
# white: E5E5E5 FFFFFF

# palenight:
#           normal light  dark
# red:      FF5370 FF869A BE5046
# green:    C3E88D
# yellow    FFCB6B F78C6C
# blue      82B1FF
# purple    C792EA
# purblue   939EDE
# cyan      89DDFF
# white     BFC7D5
# black     292D3E
# grey      3E4452

