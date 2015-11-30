# Symlink path:
#   ln -s ~/github/dotfiles/oh_my_zsh/.aliasrc ~

# git
alias g="git"

alias gs="g status"
alias gst="g stash"
alias gco="g checkout"
alias gc="g commit -m"
alias ga="g add"
alias gm="g merge"
alias gmt="g mergetool"
alias gp="g push"
alias gpo="gp -u origin"
alias gb="gco -b"
alias gup="g pull --rebase"

# rails
alias rc="be rails c"
alias rs="be rails s"
alias rt="be rake test"
alias rg="rails generate"
alias rgm="rg migration"
alias rgc="rg controller"

# bundler
alias be="bundle exec"
alias ber="be rake"

# homebrew
alias brewup="brew update && brew upgrade --all && brew cleanup -s && brew prune && brew cask cleanup"

# python
alias pyserv="python -m SimpleHTTPServer"

# database
alias dbd="ber db:drop"
alias dbc="ber db:create"
alias dbtp="ber db:test:prepare"
alias dbm="ber db:migrate"
alias dbs="ber db:seed"
alias dbr="dbm && ber db:reset"
alias dbrb="dbd && dbc && dbm"

# bower
alias b="bower"
alias bi="b install --save"

# other
alias multizip="zip -r -s 3g archive.zip" #foldername
alias annotate="annotate --position bottom --exclude tests,fixtures,factories,serializers"
alias kbdisable="sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/ 2>/dev/null"
alias kbenable="sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"

#neovim
alias vim="nvim"
