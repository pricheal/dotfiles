# macos_setup.sh, sets up my macOS environment
# author: Patrick Richeal
# last modified: 3/16/2018
# source: https://github.com/pricheal/dotfiles

# ==================================================
# app installs
# ==================================================

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install homebrew cask
brew tap caskroom/cask

# install macOS apps
brew cask install google-chrome
brew cask install musescore
brew cask install spotify
brew cask install discord
brew cask install dashlane
brew cask install filezilla
brew cask install postman
brew cask install mysqlworkbench
brew cask install slack
brew cask install caskroom/drivers/logitech-options
brew cask install iterm2
brew cask install google-backup-and-sync

# install homebrew mas
brew install mas

# install macOS app store apps
mas install 634148309 # logic pro 10.4.1
mas install 497799835 # xcode 9.2

# update installed macOS app store apps
mas upgrade