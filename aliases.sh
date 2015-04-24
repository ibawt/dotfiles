export PROMPT="${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c @%{$fg[yellow]%}%m%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}"
alias be="bundle exec"
alias e="emacsclient -t"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
export PROMPT='${ret_status}%{$fg_bold[green]%}%p @%{$fg_bold[yellow]%}%m %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

export ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
export ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
export ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
export ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
