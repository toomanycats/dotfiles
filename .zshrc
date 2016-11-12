# Path to your oh-my-zsh installation.
export ZSH=/home/daniel/oh-my-zsh-master

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux vi-mode)


# alias
alias vim=~/anaconda/bin/bin/vim
alias xterm="xterm -fa 'Monaco' -fs 13"
alias mysql='mysql --user=root --password=test --local-infile'
alias mipav=~/mipav/mipav

# alias for default behavior
alias xc="xclip -selection clipboard"

# typically use ipython 5 in py3
alias ipython="ipython --profile ipython5"
# moved most data to spinning iron drive
export NLTK_DATA="/media/daniel/Misc/nltk_data"

export PYTHONPATH=$PYTHONPATH:/home/daniel/git/Python2.7/DataScience
export PYTHONPATH=/home/daniel/git/Python2.7/MRI/Modules:$PYTHONPATH
export PATH="/home/daniel/anaconda/bin:/home/daniel/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/daniel/FSL:/home/daniel/FSL:/usr/lib/cmtk/bin/:/opt/afni_bin/linux_xorg7_64"
export PATH=~/spark-1.5.2-bin-hadoop2.6/bin:~/spark-1.5.2-bin-hadoop2.6/sbin:$PATH
#export PATH=/home/daniel/data_sci_cmd_line/tools:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
#
### Ruby ###
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.rbenv/plugins/ruby-build/bin:$PATH
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"

# alias ohmyzsh="mate ~/.oh-my-zsh"
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

# FSL environment variables
source /etc/fsl/fsl.sh

# shell options
setopt extended_glob

## wifi hacks
# turn off bluetooth
rfkill block bluetooth
