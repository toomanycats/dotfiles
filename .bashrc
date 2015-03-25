export CLICOLOR=TRUE

LSCOLORS="gxfxhxBxBxcxcxcxcxcxcx"
export LSCOLORS

alias la="ls -a"
alias ll="ls -l"

alias xterm="xterm -fa "Monaco" -fs 10 &"

xmodmap ~/.xmodmaprc
set -o vi


# taken from here: https://github.com/codeforamerica/ohana-api/wiki/Installing-MongoDB-with-MacPorts-on-OS-X

mongostop_func () {
  local mongopid=`less /opt/local/var/db/mongodb_data/mongod.lock`;
  if [[ $mongopid =~ [[:digit:]] ]]; then
      sudo kill -15 $mongopid;
      echo mongod process $mongopid terminated;
  else
      echo mongo process $mongopid not exist;
  fi
}

