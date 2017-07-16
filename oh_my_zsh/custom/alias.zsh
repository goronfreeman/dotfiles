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
alias gp="g push"
alias gpo="gp -u origin"
alias gs="g status"
alias gst="g stash"
alias gup="g pull --rebase"
alias gl="g log"

# bundler
alias be="bundle exec"
alias ber="be rake"
alias rr="rake routes"

# rails
alias rc="be bin/rails c"
alias rs="be bin/rails s"
alias rg="bin/rails generate"
alias rgm="rg migration"
alias rgc="rg controller"

# database
alias dbd="ber db:drop"
alias dbc="ber db:create"
alias dbm="ber db:migrate"
alias dbs="ber db:seed"
alias dbrb="dbd && dbc && dbm"

# homebrew
alias brewup="brew update && brew upgrade --cleanup && brew cleanup -s && brew prune && brew cask cleanup"

# neovim
alias vim="nvim"

# docker
alias dc="docker-compose"

# foreman
alias fs="foreman start"

# bower
alias bower='noglob bower'

# python
alias pyserv="python -m SimpleHTTPServer"

# atom
alias atom="atom ."

# misc
alias ll="ls -lah"
alias trash="rm -rf"
alias multizip="zip -r -s 3g archive.zip" #foldername
alias annotate="annotate --position bottom --exclude tests,fixtures,factories,serializers"
alias kbdisable="sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/ 2>/dev/null"
alias kbenable="sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"
alias weather="curl "http://wttr.in/${1-}""
