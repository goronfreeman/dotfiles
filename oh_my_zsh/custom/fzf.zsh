export FZF_DEFAULT_COMMAND='ag -l -g ""'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_DEFAULT_OPTS='
--bind ctrl-f:page-down,ctrl-b:page-up
--ansi
--color fg:-1,bg:-1,hl:-1,fg+:-1,bg+:-1,hl+:-1
--color info:-1,prompt:-1,spinner:-1,pointer:-1,marker:-1
'

bindkey '^P' fzf-file-widget
bindkey '^H' fzf-history-widget
bindkey '^D' fzf-cd-widget
