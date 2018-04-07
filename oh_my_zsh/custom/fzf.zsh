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

# fk - kill process
fk() {
  pid=$(ps -ef | sed 1d | fzf-tmux -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}

# checkout local/remote git branch
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" | fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
