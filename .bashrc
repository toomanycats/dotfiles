export CLICOLOR=TRUE

LSCOLORS="gxfxhxBxBxcxcxcxcxcxcx"
export LSCOLORS

alias la="ls -a"
alias ll="ls -l"

alias xterm="xterm -fa "Monaco" -fs 10 &"

set -o vi

export EDITOR=vi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/Data/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/Data/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/mnt/Data/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/Data/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

