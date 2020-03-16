# Symlink path:
#   ln -s ~/github/dotfiles/oh_my_zsh/functions.zsh ~/.oh-my-zsh/lib/

function zsh_stats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function uninstall_oh_my_zsh() {
  env ZSH=$ZSH /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}
