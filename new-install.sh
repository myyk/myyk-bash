unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

# Useful to be able to edit this script
ssh-keygen -t rsa -b 4096 -C "myyk.seok@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
if [ "$machine" == "Mac" ]; then
  pbcopy < ~/.ssh/id_rsa.pub
elif [ "$machine" == "Linux" ]; then
  # might need: sudo apt-get install xclip
  xclip -sel clip < ~/.ssh/id_rsa.pub
fi

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
brew install awscli

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
brew install homebrew/cask/jetbrains-toolbox
