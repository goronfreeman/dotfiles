#### 1. install Xcode
1. install from Mac App Store
2. `xcode-select --install` (command line tools)

#### 2. install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### 3. set up GitHub credentials
[Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/)

#### 4. clone config repos
1. `mkdir github`
2. `cd github`
3. `git clone git@github.com:goronfreeman/dotfiles.git`
4. `git clone git@github.com:goronfreeman/nvimfiles.git`
5. `cd ~/.oh-my-zsh/custom/plugins/`
6. `git clone git@github.com:zsh-users/zsh-syntax-highlighting.git`
7. `git clone git@github.com:zsh-users/zsh-history-substring-search.git`

#### 5. symlink files
`ln -s ~/github/dotfiles/gitconfig ~/.gitconfig`

`ln -s ~/github/dotfiles/linter_config/scss-lint.yml ~/.scss-lint.yml`

`ln -s ~/github/dotfiles/linter_config/eslintrc ~/.eslintrc`

`ln -s ~/github/dotfiles/agignore ~/.agignore`

`ln -s ~/github/dotfiles/oh_my_zsh/zshenv ~/.zshenv`

`ln -s ~/github/dotfiles/oh_my_zsh/zshrc ~/.zshrc`

`ln -s ~/github/dotfiles/oh_my_zsh/custom/alias.zsh ~/.oh-my-zsh/custom/`

`ln -s ~/github/dotfiles/oh_my_zsh/custom/fzf.zsh ~/.oh-my-zsh/custom/`

`ln -s ~/github/dotfiles/oh_my_zsh/functions.zsh ~/.oh-my-zsh/lib/`

`ln -s ~/github/nvimfiles/init.vim ~/.config/nvim/init.vim`

`ln -s ~/github/nvimfiles/autoload/ ~/.config/nvim/`

#### 6. install homebrew
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

#### 8. brew installs
`brew install chruby fzf gifify git gti heroku-toolbelt imagemagick lame mysql node postgresql ruby-install sqlite terminal-notifier the_silver_searcher tig youtube-dl`

#### 9. add cask taps
`brew tap caskroom/fonts`

`brew tap caskroom/versions`

`brew tap neovim/neovim`

#### 10. cask installs
`brew cask install airmail-beta alfred appcleaner atom bettertouchtool daisydisk dash dropbox flux font-open-sans font-roboto-mono font-source-code-pro google-chrome google-chrome-canary google-drive google-photos-backup heroku-toolbelt imageoptim istat-menus iterm2-beta kaleidoscope linear mysqlworkbench openemu paw scroll-reverser spotify steam the-unarchiver transmission vlc`

#### 11. install neovim
1. `brew install --HEAD neovim`
2. `:PlugInstall`

#### 12. install ruby (ruby-install & chruby)
1. `ruby-install ruby`
2. `echo "ruby-$(ruby -e 'print RUBY_VERSION')" > ~/.ruby-version`

#### 13. MySQL config
1. `ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents`
2. `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist`

#### 14. Mac App Store installs
* Amphetamine
* LastPass
* Pocket
* Pomodoro
* Reeder 3
* Textual

#### 15. activate licenses
* Alfred
* BetterTouchTool
* Dash
* iStat Menus
* Kaleidoscope
* Omnigraffle
* Paw

#### 16. restore preferences
* Alfred
* BetterTouchTool
* Dash
* iStat Menus

#### 17. restore Atom settings
1. `apm install sync-settings`
2. create [GitHub token](https://github.com/settings/tokens)
3. enter gist ID
4. Sync Settings: Restore

#### 18. install linters
`npm install -g csslint eslint htmlhint js-yaml jsonlint && gem install rubocop scss_lint`

#### 19. rubocop config

`curl https://gist.github.com/goronfreeman/0e67f42e4339faf62374f35bb2383c92 > /Users/hbraun/.rubocop.yml`

#### 20. disable Mission Control shift binding
1. `cd ~/Library/Preferences`
2. `open com.apple.symbolichotkeys.plist`
3. for items `34`, `35`, and `37`, set `enabled` to `NO`
4. save and reboot

#### 21. install fzf
`/usr/local/opt/fzf/install`

#### 22. other software installs
* Adobe Illustrator
* Adobe Photoshop
* Cubase 6
* [Private Internet Access](https://www.privateinternetaccess.com/installer/download_installer_osx)
