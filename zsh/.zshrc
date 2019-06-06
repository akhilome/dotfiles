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

source $ZSH/oh-my-zsh.sh
source ~/.purepower

# NODE VERSION MANAGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

### My custom aliases (in addition to zsh's git aliases)

# Git
alias pull='git pull'
alias gotostaging='git checkout staging'
alias gcane='git commit --amend --no-edit'
alias gcame='git commit --amend -m'
alias gstam='gsta -m'

# fs
alias openfastfoodfast='code ~/code/projects/fast-food-fast/'
alias fastfoodfast='cd ~/code/projects/fast-food-fast/'
alias openah='code ~/code/projects/balder/balder-ah-backend/'
alias openahf='code ~/code/projects/balder/balder-ah-frontend/'
alias openkiakiafood='code ~/code/projects/kiakiafood/'
alias ah='cd ~/code/projects/balder/balder-ah-backend'
alias ahf='cd ~/code/projects/balder/balder-ah-frontend'
alias kiakiafood='cd ~/code/projects/kiakiafood'
alias study='cd ~/code/learning/study'
alias openstudy='code ~/code/learning/study'
alias tembea-bend='cd ~/code/projects/tembea/tembea'
alias opent='tembea-bend && code ~/code/projects/tembea/tembea'
alias tembea-fend='cd ~/code/projects/tembea/tembea-frontend'
alias opentf='tembea-fend && code ~/code/projects/tembea/tembea-frontend'
alias p='cd ~/me/personal'
alias op='code ~/me/personal'
alias tvng='cd ~/code/projects/tvng'
alias tw='code ~/.tvng.md'

# sheer laziness
alias ?='tldr'
alias cra='create-react-app'
alias q='exit'
alias ngrok='~/ngrok http '
alias t='tree -L 1'
alias t2='tree -L 2'
