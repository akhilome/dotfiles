# My Prefered theme
ZSH_THEME="kay"

# My Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

### My custom aliases (in addition to zsh's git aliased)

# Git
alias pull='git pull'
alias gotodevelop='git checkout develop'
alias gotostaging='git checkout staging'
alias gcane='git commit --amend --no-edit'
alias gcame='git commit --amend -m'

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
alias enterexercism='cd /Users/kizitoakhilome/Exercism'
alias tembea-bend='cd ~/code/projects/tembea/tembea'
alias opent='code ~/code/projects/tembea/tembea'
alias opentf='code ~/code/projects/tembea/tembea-frontend'
alias tembea-fend='cd ~/code/projects/tembea/tembea-frontend'
alias p='cd ~/me/personal'
alias pj='cd ~/me/personal/journals'
alias op='code ~/me/personal'
alias opj='code ~/me/personal/journals'
alias tvng='cd ~/code/projects/tvng'

# sheer laziness
alias ?='tldr'
alias cra='create-react-app'
alias q='exit'
