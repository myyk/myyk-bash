# Useful tools for every mac
echo "Installing brew and stuff that installs with brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install homebrew/cask/keepingyouawake
brew install homebrew/cask/atom
brew install wget
brew install homebrew/cask/google-photos-backup-and-sync
brew install homebrew/cask/google-drive-file-stream
brew install tree

# To get off the old mac defaults
brew install git
brew install git bash-completion
brew install php
brew install python
brew install ruby

# Personal
brew install homebrew/cask/steam

# Grab toolset
brew install homebrew/cask/jetbrains-toolbox
brew install go
## Install Go Repo
mkdir -p $GOPATH/src/gitlab.myteksi.net/gophers
cd $GOPATH/src/gitlab.myteksi.net/gophers
### Make sure you already setup the ssh keys in Jumpcloud or https://gitlab.myteksi.net/profile/keys
git clone git@gitlab.myteksi.net:gophers/go.git
go build ./...
grabcode install_local_tools
#### This will take a while
grabcode verify ./...
cd -
curl -L https://raw.github.com/mikeclarke/install-arcanist/master/install.sh | sudo sh
