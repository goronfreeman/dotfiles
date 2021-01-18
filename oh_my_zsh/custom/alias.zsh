# Symlink path:
#   ln -s ~/github/dotfiles/oh_my_zsh/.aliasrc ~

# cd
alias ..="cd .."
alias ...="cd ../.."

# git
alias g="git"
alias ga="g add"
alias gb="gco -b"
alias gc="g commit -m"
alias gco="g checkout"
alias gdt="g difftool"
alias gm="g merge"
alias gmt="g mergetool"
alias gp="! git push -u origin $(git branch --show-current)"
alias gs="g status"
alias gst="g stash"
alias gup="g pull --rebase"
alias gl="g log"

# bundler
alias be="bundle exec"

# rails
alias rc="rails c"
alias rr="rails routes"
alias rs="rails s"
alias rgm="rails generate migration"

# database
alias dbd="rails db:drop"
alias dbc="rails db:create"
alias dbm="rails db:migrate"
alias dbmt="dbm RAILS_ENV=test"
alias dbr="rails db:rollback"
alias dbrt="dbr RAILS_ENV=test"
alias dbs="rails db:seed"
alias dbrb="dbd && dbc && dbm"

# homebrew
alias brewup="brew update && brew upgrade && brew cleanup -s && brew cask upgrade"

# neovim
alias vim="nvim"

# tmux
alias mux="tmuxinator"

# misc
alias ll="ls -lah"
alias trash="rm -rf"
alias annotate="annotate --position bottom --exclude tests,fixtures,factories,serializers"
