export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt nocorrectall
unsetopt correct_all

# listing aliases
alias ls='ls -G'
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up


ZSH=$HOME/.oh-my-zsh
ZSH_THEME="norm"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git grunt gitfast extract autojump coffee dircycle git-extras github npm osx per-directory-history pip sublime)

source $ZSH/oh-my-zsh.sh

source $HOME/.profile

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.bin

if which npm > /dev/null; then
  export PATH=$(npm -g bin 2>/dev/null):$PATH
fi
