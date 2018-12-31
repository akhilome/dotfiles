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
alias gcamend='git commit --amend -m'

# fs
alias openfastfoodfast='code ~/code/projects/fast-food-fast/'
alias fastfoodfast='cd ~/code/projects/fast-food-fast/'
alias openah='code ~/code/projects/balder-ah-backend/'
alias ah='cd ~/code/projects/balder-ah-backend'
alias study='cd ~/code/learning/study'

# sheer laziness
alias ?='tldr'
alias cra='create-react-app'
alias q='exit'
