[[ $- != *i* ]] && return
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
complete -cf sudo

shopt -s histappend
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls'

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
alias mv='mv -i'
alias df='df -h'
alias du='du -h'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h="cd ~"
alias unixtime="date +%s"
alias gdb="gdb -q"

[[ -f "$HOME/.bash/aliases" ]] && . "$HOME/.bash/aliases"
[[ -f "$HOME/.bash/functions" ]] && . "$HOME/.bash/functions"
shopt -s checkwinsize

export GCC_COLORS='error=01;91:warning=01;95:note=01;96:caret=01;92:locus=01:quote=01'
export VISUAL=vim
export EDITOR="$VISUAL"
export PROMPT_DIRTRIM=2