# Path to your oh-my-zsh installation.
export ZSH=/home/dpcuneo/hg_dot/oh-my-zsh

ZSH_THEME="hostname-prompt"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

plugins=(tmux vi-mode hg git)

# custom competions
fpath=(~/bin/zsh_completion $fpath)
# compsys initialization
# autoload -U compinit
# compinit

# alias
alias xterm="xterm -fa 'Monaco' -fs 13"

# I typically want to see files in rev chron order
alias ll="ls -ltr"

# eclipse
alias eclipse="/home/als3/acct/dpcuneo/jee-oxygen/eclipse/eclipse"

# VIM
alias vim=/usr/local/bin/vim

# alias for default behavior
alias xclip="xclip -selection clipboard"

# typically use ipython 5 in py3
alias ipython="ipython --profile ipython5"
# moved most data to spinning iron drive
#export NLTK_DATA="/mnt/Misc/nltk_data"

# Rust
#export PATH=~/.cargo/bin:$PATH

# Anaconda
export PATH=~/anaconda3/bin:$PATH

# Git Bash
export PATH=~/git_bash:$PATH

### Ruby ###
# source "$HOME/.rvm/scripts/rvm"
# export PATH=~/.gem/ruby/2.4.0/bin:$PATH

source $ZSH/oh-my-zsh.sh
# to improve vi key bindings in the terminal
export timeout=1

export EDITOR=vi
# alias mongostart="mongod --dbpath /media/Mongo --fork --log /media/Mongo/mongo.log"
# alias gephi=~/gephi/bin/gephi

# if user bin exists, add it to the pasth
if [ -e ~/bin ];then
    export PATH=~/bin:$PATH
fi

# rust
export PATH=~/.cargo/bin:$PATH

# add sbin to path
export PATH=/usr/sbin:$PATH

# VI mode
bindkey -v
# enable Cnt R for search history: required with VI mode bindings on
bindkey "^r" history-incremental-search-backward
# do not store commands preceded by a space
setopt HIST_IGNORE_SPACE
# sharing history can suck
unsetopt share_history

# shell options
setopt extended_glob

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# gpg connect agent
export PINENTRY_USER_DATA="USE_CURSES=1"

# Archiver App Dev / Testing
export ANT_HOME=/home/dpcuneo/apache-ant-1.10.3
export JAVA_HOME=/opt/jdk1.8.0_171
export PATH=${JAVA_home}/bin:$PATH

export PYTHONPATH=/home/dpcuneo/git_python3
export PYTHONPATH=/home/dpcuneo/git_archapplpy_py3:$PYTHONPATH
export PYTHONPATH=/home/dpcuneo/git_pv_plot:$PYTHONPATH

# eclipse alias
alias eclipse="/home/dpcuneo/eclipse/jee-oxygen/eclipse/eclipse"

# RDP to EPS dev W10 machine in HJ's office
alias eps_conn="xfreerdp -u epsdev  128.3.131.116"


# load ssh key agent
#eval `ssh-agent`
export GOPATH=${HOME}/go
export PATH=/usr/local/go/bin:${PATH}:${GOPATH}/bin


# hack my LS_COLORS since I cannot seem to change it properly
#export LS_COLORS=$(echo $LS_COLORS | sed 's/di=38;5;27/di=36;4;27/1')
export LS_COLORS=${LS_COLORS/di=38;5;27/di=36;4;27}
