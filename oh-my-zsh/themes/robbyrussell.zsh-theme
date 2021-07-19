#zsh theme    
#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"    
     
PROMPT='%B%F{28}[%n@%m]%{$reset_color%}'    
PROMPT+=' %{$fg_bold[blue]%}%c%{$reset_color%} $(git_prompt_info)'    
     
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"    
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "    
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"    
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
