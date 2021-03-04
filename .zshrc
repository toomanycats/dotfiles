# Path to your oh-my-zsh installation.
export ZSH=/home/dpcuneo/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git tmux vi-mode)

autoload -Uz promptinit
promptinit

# alias for default behavior
alias xclip="xclip -selection clipboard"

# typically use ipython 5 in py3
# alias ipython="ipython --profile ipython5"
# moved most data to spinning iron drive

# Rust
# export PATH=~/.cargo/bin:$PATH

### Ruby ###
#source "$HOME/.rvm/scripts/rvm" 
#export PATH=~/.gem/ruby/2.4.0/bin:$PATH

source $ZSH/oh-my-zsh.sh
# to improve vi key bindings in the terminal
export timeout=1

export EDITOR=vi

# if user bin exists, add it to the pasth
if [ -e ~/bin ];then
    export PATH=~/bin:$PATH
fi

# VI mode
bindkey -v
# enable Cnt R for search history: required with VI mode bindings on
bindkey "^r" history-incremental-search-backward

# shell options
setopt extended_glob
