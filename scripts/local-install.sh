#!/usr/bin/env bash

# Copy Dotfiles
echo "Copying dotfiles..."
mkdir $HOME/dotfiles
cp -r ./system $HOME/dotfiles

# Install apps
echo "Installing packages & apps..."
./scripts/local-install.sh

# Setup bash_profile
echo "Setting up bash_profile..."
mv $HOME/.bash_profile $HOME/.bash_profile_backup
cp ./shell/.bash_profile $HOME
source $HOME/.bash_profile

# Setup git
mv $HOME/.gitconfig $HOME/.gitconfig_backup
cp ./config/.gitconfig $HOME

# Set MacOS Defaults
echo "Setting up mac os defaults..."
source ./scripts/mac-os-defaults.sh

echo "Setup complete."
