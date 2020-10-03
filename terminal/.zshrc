# Path to your oh-my-zsh installation.
export ZSH="/Users/kizitoakhilome/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  yarn
  zsh-syntax-highlighting
  zsh-autosuggestions
  vi-mode
)

# stop showing dynamic terminal titles
DISABLE_AUTO_TITLE="true"

source $ZSH/oh-my-zsh.sh
source ~/.purepower

# NODE VERSION MANAGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###################################################
############### Path Finders ######################
###################################################
export GOPATH=$HOME/code/go # ⚠️ remember to change this if base go dir no longer ~/code/go
export PATH=$PATH:$GOPATH/bin
###################################################
###################################################

###################################################
########## Environment Variables ##################
###################################################

export NODE_ENV="development"

###################### bat ########################
export BAT_PAGER=""
export BAT_THEME="OneHalfDark"

###################### less #######################
export LESS='-R --mouse'

###################### tmux #######################
if [[ $TERM == xterm ]]; then
  export TERM=xterm-256color
fi

if [[ $TERM == screen ]]; then
  export TERM=screen-256color
fi

###################### xxxx #######################
# export ENV1="val1"
# export ENV2="val2"
# export ENV3="val3"
###################################################
###################################################

###################################################
################## aliases ########################
###################################################

###################### git ########################
alias gcane='git commit --amend --no-edit'
alias gcame='git commit --amend -m'
alias gstam='gsta -m'
alias gi='git init'
alias gfl='git reflog'

###################### fs #########################
# fs specific aliases

################### laziness ######################
alias i='tldr'
alias cra='create-react-app'
alias q='exit'
alias ngrok='~/bins/ngrok http '
alias t='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias yd='yarn dev'
alias j='jrnl'
alias tm='tmux'
alias tma='tmux a'
alias tmat='tmux a -t'
alias tmd='tmux detach'
alias tmn='tmux new -s'
alias tmks='tmux kill-server'
alias clr='clear'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias s='serve -n -l 3000 '
alias n='nvim '
alias fixyarn='brew unlink yarn && brew link yarn'
alias mp='multipass'
alias vi='nvim '
alias vim='nvim '
alias nmts="nodemon -e ts,json -w './' --exec npm start"
alias nmjs="nodemon -e js,json -w './' --exec npm start"


###################################################
################## Functions. #####################
###################################################

# nodemon
function nm() {
  EXTS=$1
  SCRIPT=$2

  if ! [[ -z $EXTS ]] && ! [[ -z $SCRIPT ]]; then
    echo "[i]: nodemon running $SCRIPT; watching for $EXTS files"
    nodemon -e $EXTS -w './' --exec $SCRIPT
  elif ! [[ -z $EXTS ]]; then
    echo "[i]: nodemon running npm start; watching for $EXTS files"
    nodemon -e $EXTS -w './' --exec npm start
  elif ! [[ -z $SCRIPT ]]; then
    echo "[i]: nodemon running $SCRIPT; watching for default exts"
    nodemon -w './' --exec $SCRIPT
  else
    echo "[i]: starting nodemon in cwd watching default exts"
    nodemon .
  fi
}

# nodemon interactive
function nmi() {
  echo -n '[q]: specify directory to watch (required): '
  read DIR

  if [[ -z $DIR ]]; then
    echo "[f]: you must specify a directory to watch; pass . to watch pwd"
    return 1
  fi

  echo -n '[q]: specify extensions to watch: '
  read EXTS
  echo -n '[q]: specify script to run: '
  read SCRIPT

  if [[ -z $SCRIPT ]]; then
    echo "[i]: no execution script specified, defaulting to 'npm start'"
    SCRIPT='npm start'
  fi

  if ! [[ -z $EXTS ]] && ! [[ -z $SCRIPT ]]; then
    echo "[i]: nodemon running $SCRIPT; watching for $EXTS files"
    nodemon -e $EXTS -w $DIR --exec $SCRIPT
  elif ! [[ -z $EXTS ]]; then
    echo "[i]: nodemon running npm start; watching for $EXTS files"
    nodemon -e $EXTS -w $DIR --exec npm start
  elif ! [[ -z $SCRIPT ]]; then
    echo "[i]: nodemon running $SCRIPT; watching for default exts"
    nodemon -w $DIR --exec $SCRIPT
  else
    echo "[i]: starting nodemon in cwd watching default exts"
    nodemon $DIR
  fi
}

