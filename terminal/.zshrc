# Path to your oh-my-zsh installation.
export ZSH="/Users/kizitoakhilome/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  yarn
  zsh-syntax-highlighting
  zsh-autosuggestions
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
export GOPATH=$HOME/code/go # remember to change this if base go dir no longer ~/code/go ⚠️
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
alias pull='git pull'
alias gcane='git commit --amend --no-edit'
alias gcame='git commit --amend -m'
alias gstam='gsta -m'

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
alias clr='clear'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
