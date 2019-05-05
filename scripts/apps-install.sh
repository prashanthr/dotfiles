#!/usr/bin/env bash

# Brew
echo "Installing Brew 🍺..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# Essential Packages
echo "Installing essential packages using brew..."
brew install wget
brew install git

# Node, NPM & Yarn
echo "Installing Node..."
NVM_VERSION=v0.34.0
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
command -v nvm
nvm install node
nvm use node
npm install -g npm@latest
npm install -g yarn
yarn -v

# Applications
echo "Installing applications..."
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install sublime-text3
brew cask install spotify
brew cask install firefox
