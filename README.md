#### 1. install Xcode
1. install from Mac App Store
2. `xcode-select --install` (command line tools)

#### 2. install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### 3. set up GitHub credentials
[Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/)

#### 4. clone config repos
`git clone git@github.com:goronfreeman/dotfiles.git ~/github`

`git clone git@github.com:goronfreeman/nvimfiles.git ~/github`

#### 5. symlink files
`ln -s ~/github/dotfiles/.scss-lint.yml ~/`

`ln -s ~/github/dotfiles/agignore ~/.agignore`

`ln -s ~/github/dotfiles/oh_my_zsh/zshenv ~/.zshenv`

`ln -s ~/github/dotfiles/oh_my_zsh/zshrc ~/.zshrc`

`ln -s ~/github/dotfiles/oh_my_zsh/custom/alias.zsh ~/.oh-my-zsh/custom/`

`ln -s ~/github/dotfiles/oh_my_zsh/custom/fzf.zsh ~/.oh-my-zsh/custom/`

`ln -s ~/github/dotfiles/oh_my_zsh/functions.zsh ~/.oh-my-zsh/lib/`

`ln -s ~/github/nvimfiles/nvimrc ~/.nvimrc`

`ln -s ~/github/nvimfiles/autoload/ ~/.nvim/`

#### 6. install homebrew
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

#### 7. install homebrew-cask
`brew install caskroom/cask/brew-cask`

#### 8. brew installs
`brew install fzf gifify git gti heroku-toolbelt imagemagick lame mysql node postgresql rbenv ruby-build sqlite the_silver_searcher tig youtube-dl`

#### 9. add cask taps
`brew tap caskroom/fonts`

`brew tap caskroom/versions`

`brew tap neovim/neovim`

#### 10. cask installs
`brew cask install alfred atom bettertouchtool daisydisk dash dropbox flux font-open-sans font-roboto-mono font-source-code-pro google-drive google-photos-backup heroku-toolbelt imageoptim istat-menus iterm2-beta kaleidoscope mysqlworkbench scroll-reverser spotify steam textual the-unarchiver transmission vlc`

#### 11. install neovim
1. `brew install --HEAD neovim`
2. `sudo easy_install pip`
3. `sudo -H pip install neovim`
4. `:PlugInstall`

#### 12. install ruby
1. `rbenv install -l`
2. `rbenv install <latest_version>`
3. `rbenv global <latest_version>`

#### 13. MySQL config
1. `ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents`
2. `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist`

#### 14. Mac App Store installs
* Amphetamine
* LastPass
* Pocket
* Pomodoro
* Pushbullet
* Reeder 3

#### 15. activate licenses
* Alfred
* Dash
* iStat Menus
* Kaleidoscope

#### 16. restore preferences
* Alfred
* BetterTouchTool
* Dash
* iStat Menus

#### 17. restore Atom settings
1. `apm install sync-settings`
2. create GitHub token
3. enter gist ID
4. Sync Settings: Restore

#### 18. install linters
`npm install -g csslint eslint htmlhint js-yaml jsonlint && gem install rubocop scss_lint`

#### 19. rubocop config
1. `curl https://gist.githubusercontent.com/goronfreeman/b13d44c9d5c02e689a44/raw/a2f6c26e11081cd82a4b1937f4ac243f610d5bf3/default.yml > /usr/local/opt/rbenv/versions/<ruby_global_version>/lib/ruby/gems/<ruby_base_version>/gems/rubocop-<rubocop_version>/config/default.yml`

2. `curl https://gist.githubusercontent.com/goronfreeman/b13d44c9d5c02e689a44/raw/a2f6c26e11081cd82a4b1937f4ac243f610d5bf3/disabled.yml > /usr/local/opt/rbenv/versions/<ruby_global_version>/lib/ruby/gems/<ruby_base_version>/gems/rubocop-<rubocop_version>/config/disabled.yml`

3. `curl https://gist.githubusercontent.com/goronfreeman/b13d44c9d5c02e689a44/raw/a2f6c26e11081cd82a4b1937f4ac243f610d5bf3/enabled.yml > /usr/local/opt/rbenv/versions/<ruby_global_version>/lib/ruby/gems/<ruby_base_version>/gems/rubocop-<rubocop_version>/config/enabled.yml`

_example:_

`curl https://gist.githubusercontent.com/goronfreeman/b13d44c9d5c02e689a44/raw/a2f6c26e11081cd82a4b1937f4ac243f610d5bf3/default.yml > /usr/local/opt/rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/rubocop-0.34.2/config/default.yml`

#### 20. disable Mission Control shift binding
1. `cd ~/Library/Preferences`
2. `open com.apple.symbolichotkeys.plist`
3. for items `34`, `35`, and `37`, set `enabled` to `NO`
4. save and reboot

#### 21. install fzf
`/usr/local/opt/fzf/./install`

#### 22. other software installs
* Adobe Illustrator
* Adobe Photoshop
* Cubase 6
* Google Chrome
* Private Internet Access
