virtualenv_prompt_info() {
    if [ $VIRTUAL_ENV ]
    then
        echo $fg[yellow]'('$(echo `basename "$VIRTUAL_ENV"`)'):'%f
    fi
}

PROMPT='
%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )$(virtualenv_prompt_info)%{$fg[cyan]%}%d%{$reset_color%}$(git_prompt_info)
%% '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"