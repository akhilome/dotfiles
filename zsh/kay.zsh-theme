local ret_status="%(?:%{$fg[magenta]%}=> :%{$fg[red]%}=> %s)"

PROMPT='%{$fg[blue]%}%c $ret_status'
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=") %{$fg[green]%}✓%{$reset_color%}"
