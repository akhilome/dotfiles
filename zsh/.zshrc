# My Prefered theme
POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"

# My Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{099}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{099}\u2570%F{099}\uF460%F{099}\uF460%F{099}\uF460%f "
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='099'
POWERLEVEL9K_DIR_HOME_BACKGROUND='099'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_FOREGROUND='015'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_PATH_SEPARATOR=" \uE0B1 "
POWERLEVEL9K_SHORTEN_DELIMITER=''
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


### My custom aliases (in addition to zsh's git aliased

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
