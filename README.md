#### 1. install Xcode
1. install from Mac App Store
2. install command line tools: `xcode-select --install`

#### 2. install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### 3. set up GitHub credentials
[Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/)

#### 4. clone dotfiles repo
`cd github`

`git clone git@github.com:goronfreeman/dotfiles.git`

#### 5. symlink files
`ln -s ~/github/dotfiles/.scss-lint.yml ~`

`ln -s ~/github/dotfiles/oh_my_zsh/.aliasrc ~`

`ln -s ~/github/dotfiles/oh_my_zsh/.zshenv ~`

`ln -s ~/github/dotfiles/oh_my_zsh/.zshrc ~`

`ln -s ~/github/dotfiles/oh_my_zsh/functions.zsh ~/.oh-my-zsh/lib/`

#### 6. install homebrew
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

#### 7. install homebrew-cask
`brew install caskroom/cask/brew-cask`

#### 8. brew installs
`brew install gifify git gti heroku-toolbelt imagemagick lame mysql node postgresql rbenv ruby-build sqlite tig youtube-dl`

#### 9. add homebrew-fonts tap
`brew tap caskroom/fonts`

#### 10. cask installs
`brew cask install alfred atom bettertouchtool daisydisk dash dropbox flux font-open-sans font-roboto-mono font-source-code-pro google-drive google-photos-backup heroku-toolbelt imageoptim istat-menus kaleidoscope mysqlworkbench scroll-reverser spotify steam textual the-unarchiver transmission vlc`

#### 11. MySQL config
1. `ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents`
2. `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist`

#### 12. Mac App Store installs
* Amphetamine
* LastPass
* Pocket
* Pomodoro
* Pushbullet
* Reeder 3

#### 13. activate licenses
* Alfred
* Dash
* iStat Menus
* Kaleidoscope

#### 14. restore preferences
* Alfred
* BetterTouchTool
* Dash
* iStat Menus

#### 15. restore Atom settings
1. `apm install sync-settings`
2. create GitHub token
3. enter gist ID
4. Sync Settings: Restore

#### 16. install linters
* `npm install -g csslint`
* `npm install -g eslint`
* `npm install -g htmlhint`
* `npm install -g js-yaml`
* `npm install -g jsonlint`
* `gem install rubocop`
* `gem install scss_lint`

#### 17. disable Mission Control shift binding
1. `cd ~/Library/Preferences`
2. `open com.apple.symbolichotkeys.plist`
3. for items `34`, `35`, and `37`, set `enabled` to `NO`
4. save and reboot

#### 18. other software installs
* Adobe Illustrator
* Adobe Photoshop
* Cubase 6
* Google Chrome
* Private Internet Access
