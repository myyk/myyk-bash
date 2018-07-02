# Useful tools for every mac
echo "Installing brew and stuff that installs with brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install homebrew/cask/keepingyouawake
brew install homebrew/cask/atom
brew install wget

# To get off the old mac defaults
brew install git
brew install git bash-completion
brew install python

# Grab toolset
brew install homebrew/cask/jetbrains-toolbox
brew install go
#TODO: this didn't work for me
curl -L https://raw.github.com/mikeclarke/install-arcanist/master/install.sh | sh
