# https://gist.github.com/junegunn/8b572b8d4b5eddd8b85e5f4d40f17236

is_in_git_repo() {
  git rev-parse HEAD > /dev/null 2>&1
}

git_b() {
  if is_in_git_repo; then
    local branch=$(git branch -a --color=always | grep -v '/HEAD\s' | sort |
      fzf-tmux --ansi --multi --tac --preview-window right:70% \
      --preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" $(sed s/^..// <<< {} | cut -d" " -f1) | head -'$LINES |
      sed 's/^..//' | cut -d' ' -f1 |
      sed 's#^remotes/##')

    if [[ $branch ]]; then
      git checkout --quiet $branch
    fi
  fi
}

git_f() {
  if is_in_git_repo; then
    git -c color.status=always status --short |
      fzf-tmux -m --ansi --nth 2..,.. \
      --preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
      cut -c4- | sed 's/.* -> //'
  fi
}

git_h() {
  if is_in_git_repo; then
    git log --date=short --format="%C(green)%C(bold)%cd %C(auto)%h%d %s (%an)" --graph --color=always |
      fzf-tmux --ansi --no-sort --reverse --multi --bind 'ctrl-s:toggle-sort' \
      --header 'Press CTRL-S to toggle sort' \
      --preview 'grep -o "[a-f0-9]\{7,\}" <<< {} | xargs git show --color=always | head -'$LINES |
      grep -o "[a-f0-9]\{7,\}"
  fi
}

git_r() {
  if is_in_git_repo; then
    git remote -v | awk '{print $1 "\t" $2}' | uniq |
      fzf-tmux --tac \
      --preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" {1} | head -200' |
      cut -d$'\t' -f1
  fi
}

git_t() {
  if is_in_git_repo; then
    git tag --sort -version:refname |
      fzf-tmux --multi --preview-window right:70% \
      --preview 'git show --color=always {} | head -'$LINES
  fi
}

join_lines() {
  local item

  while read item; do
    echo -n "${(q)item} "
  done
}

bind_git_helper() {
  local c

  for c in $@; do
    eval "fzf-g$c-widget() { local result=\$(git_$c | join_lines); zle reset-prompt; LBUFFER+=\$result }"
    eval "zle -N fzf-g$c-widget"
    eval "bindkey '^g^$c' fzf-g$c-widget"
  done
}

bind_git_helper a b f h r t
unset -f bind_git_helper
