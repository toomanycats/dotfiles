# Path to your oh-my-zsh installation.
export ZSH=/home/daniel/oh-my-zsh-master

ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git tmux vi-mode)

autoload -Uz promptinit
promptinit

# alias
alias xterm="xterm -fa 'Monaco' -fs 13"
alias mysql='mysql --user=root --password=test --local-infile'
alias mipav=~/mipav/mipav

# alias for default behavior
alias xclip="xclip -selection clipboard"

# typically use ipython 5 in py3
alias ipython="ipython --profile ipython5"
# moved most data to spinning iron drive
export NLTK_DATA="/media/daniel/Misc/nltk_data"

export PYTHONPATH=$PYTHONPATH:/home/daniel/git/Python2.7/DataScience
export PYTHONPATH=/home/daniel/git/Python2.7/MRI/Modules:$PYTHONPATH
export PATH="/home/daniel/anaconda/bin:/home/daniel/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/daniel/FSL:/home/daniel/FSL:/usr/lib/cmtk/bin/:/opt/afni_bin/linux_xorg7_64"
export PATH=~/spark-1.5.2-bin-hadoop2.6/bin:~/spark-1.5.2-bin-hadoop2.6/sbin:$PATH
# Rust
export PATH=~/.cargo/bin:$PATH
### Ruby ###
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.rbenv/plugins/ruby-build/bin:$PATH
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh
# to improve vi key bindings in the terminal
export timeout=1

export EDITOR=vi
alias mongostart="mongod --dbpath /media/Mongo --fork --log /media/Mongo/mongo.log"
alias gephi=~/gephi/bin/gephi

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
