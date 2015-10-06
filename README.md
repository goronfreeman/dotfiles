#### 1. install Xcode
1. install from Mac App Store
2. open to install command line tools

#### 2. install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### 3. brew installs
`brew install brew-cask gifify git gti heroku-toolbelt imagemagick lame mysql node postgresql rbenv ruby-build sqlite tig youtube-dl`

#### 4. add homebrew-fonts tap
`brew tap caskroom/fonts`

#### 5. cask installs
`brew cask install alfred atom bettertouchtool carbon-copy-cloner daisydisk dash dropbox flux font-open-sans font-roboto-mono font-source-code-pro google-drive google-photos-backup heroku-toolbelt imageoptim istat-menus kaleidoscope mysqlworkbench scroll-reverser spotify steam textual the-unarchiver transmission vlc`

#### 6. Mac App Store installs
* Amphetamine
* LastPass
* Leaf
* Pocket
* Pomodoro
* Pushbullet

#### 7. activate licenses
* Alfred
* Dash
* iStat Menus
* Kaleidoscope

#### 8. restore preferences
* Alfred
* BetterTouchTool
* Dash
* iStat Menus

#### 9. set up GitHub credentials
* [Generating SSH keys](https://help.github.com/articles/generating-ssh-keys/)

* restore .ssh directory

#### 10. clone dotfiles repo
`cd github`

`git clone git@github.com:goronfreeman/dotfiles.git`

#### 11. symlink files
`ln -s ~/github/dotfiles/oh_my_zsh/.aliasrc ~`

`ln -s ~/github/dotfiles/oh_my_zsh/.zshenv ~`

`ln -s ~/github/dotfiles/oh_my_zsh/.zshrc ~`

`ln -s ~/github/dotfiles/oh_my_zsh/functions.zsh ~/.oh-my-zsh/lib/`

#### 12. restore Atom settings
1. `apm install sync-settings`
2. create GitHub token
3. enter gist ID
4. Sync Settings: Restore

#### 13. other software installs
* Adobe Illustrator
* Adobe Photoshop
* Cubase 6
* Private Internet Access
* Reeder 3
