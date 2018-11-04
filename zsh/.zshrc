# My Prefered theme
ZSH_THEME="kay"

# My Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# My custom aliases (in addition to zsh's git aliased)
alias pull='git pull'
alias gotodevelop='git checkout develop'
