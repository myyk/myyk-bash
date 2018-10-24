# Useful to be able to edit this script
ssh-keygen -t rsa -b 4096 -C "myyk.seok@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
## Setup github creds at https://github.com/settings/keys
cd ~
git clone git@github.com:myyk/myyk-bash.git
git config --global core.excludesfile ~/.gitignore_global
## Copy everything from myyk-bash into ~, incomplete set of commands below
mv myyk-bash/* .
mv myyk-bash/.bash* .
mv myyk-bash/.git* .
mv myyk-bash/.ssh/config  .ssh/
## Remove the clone bc it's now in ~

# Useful tools for every mac
echo "Installing brew and stuff that installs with brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install homebrew/cask/keepingyouawake
brew cask install spectacle
brew install homebrew/cask/atom
brew install wget
brew install homebrew/cask/google-photos-backup-and-sync
brew install tree
brew cask install docker-toolbox
brew install thefuck

# To get off the old mac defaults
brew install git
brew install git bash-completion
git config --global core.editor "atom --wait"
brew install php
brew install python
brew install ruby
brew cask install iterm2

# Personal
brew install homebrew/cask/steam
brew install wine
brew install winetricks
brew cask install xquartz
brew cask install playonmac

# Scala Dev toolset
brew install sbt
brew cask install scala-ide

# Grab toolset
brew cask install tunnelblick
brew install homebrew/cask/workplace-chat
brew install homebrew/cask/jetbrains-toolbox
brew install go
brew install graphviz
brew cask install dbeaver-community
## Install Go Repo
mkdir -p $GOPATH/src/gitlab.myteksi.net/gophers
cd $GOPATH/src/gitlab.myteksi.net/gophers
## Needed for deploy Repo
pip3 install pyyaml
### Make sure you already setup the ssh keys in Jumpcloud or https://gitlab.myteksi.net/profile/keys
git clone git@gitlab.myteksi.net:gophers/go.git
cd go
go build ./...
grabcode install_local_tools
#### This will take a while
grabcode verify ./...
cd ~
#### Follow the instructions at the prompts
curl -L https://raw.github.com/mikeclarke/install-arcanist/master/install.sh | sudo sh
arc install-certificate
