[[ $- != *i* ]] && return
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
complete -cf sudo

shopt -s histappend
shopt -s checkwinsize

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
alias py="python"
alias yt-dlp="yt-dlp -o '%(title)s.%(ext)s'"
alias mus-dl='yt-dlp -x --audio-quality 0'
alias pl-dl="\yt-dlp -o '%(playlist_index)s. %(title)s.%(ext)s' -x --audio-format vorbis --audio-quality 0"
alias python='python3'
alias bc="bc -q"

export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls'
export GCC_COLORS='error=01;91:warning=01;95:note=01;96:caret=01;92:locus=01:quote=01'
export VISUAL=vim
export EDITOR="$VISUAL"
export PROMPT_DIRTRIM=2
export PATH="~/.local/bin:${PATH}"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

stty susp undef
bind '"\C-z":"fg\015"'

if [[ $(echo $PREFIX | grep -o "com.termux") ]]; then
    export PS1='\[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
    alias sd="cd ~/storage/shared"
fi
