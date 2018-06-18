# Install or open the webpage for the selected application
# using "brew search" as the source input,
# and display a preview window for the currently marked application.
# [B]rew [I]nstall [P]ackage
bip() {
  local formula=$(brew search | fzf-tmux --query="$1" +m --preview 'brew info {}')

  if [[ $formula ]]; then
    printf "(I)nstall or open the (h)omepage of $formula "
    read -r input

    if [[ $input = "h" ]] || [[ $input = "H" ]]; then
      brew home $formula
    elif [[ $input = "i" ]] || [[ $input = "I" ]] || [[ $input = "" ]]; then
      brew install $formula
    fi
  fi
}

# Uninstall the selected application using "brew leaves" as the input source,
# and display a preview window for the currently marked application.
# [B]rew [C]lean [P]ackage
bcp() {
  local formula=$(brew leaves | fzf-tmux --query="$1" +m --preview 'brew info {}')

  if [[ $formula ]]; then
    printf "Are you sure you want to uninstall $formula? (y/N) "
    read -r input

    if [[ $input = "y" ]] || [[ $input = "Y" ]]; then
      brew uninstall $formula
    fi
  fi
}

# Check for any outdated formulae using "brew outdated" as the input source,
# and display a preview window for the currently marked application
# [B]rew [O]utdated [P]acakges
bop() {
  local formula=$(brew outdated | fzf-tmux --query="$1" +m --preview 'brew info {}')

  if [[ $formula ]]; then
    printf "Do you want to upgrade $formula? (Y/n) "
    read -r input

    if [[ $input = "y" ]] || [[ $input = "Y" ]] || [[ $input == "" ]]; then
      brew upgrade $formula
    fi
  fi
}

# Install or open the webpage for the selected application
# using "brew cask search" as the input source,
# and display a preview window for the currently marked application.
# [C]ask [I]nstall [P]ackage
cip() {
  local formula=$(brew cask search | fzf-tmux --query="$1" +m --preview 'brew cask info {}')

  if [[ $formula ]]; then
    printf "(I)nstall or open the (h)omepage of $formula "
    read -r input

    if [[ $input = "h" ]] || [[ $input = "H" ]]; then
      brew cask home $formula
    elif [[ $input = "i" ]] || [[ $input = "I" ]] || [[ $input = "" ]]; then
      brew cask install $formula
    fi
  fi
}

# Uninstall the selected application using "brew cask list" as the input source,
# and display a preview window for the currently marked application.
# [C]ask [C]lean [P]ackage
ccp() {
  local formula=$(brew cask list | fzf-tmux --query="$1" +m --preview 'brew cask info {}')

  if [[ $formula ]]; then
    printf "Are you sure you want to uninstall $formula? (y/N) "
    read -r input

    if [[ $input = "y" ]] || [[ $input = "Y" ]]; then
      brew cask uninstall $formula
    fi
  fi
}
