#!/usr/bin/env bash

# Source Paths
CWD="$(pwd)"
SRC_SYS_PATH=$CWD/system
SRC_SCRIPTS_PATH=$CWD/scripts
SRC_SHELL_PATH=$CWD/shell
SRC_CONFIG_PATH=$CWD/config

# Copy Dotfiles
echo "Copying dotfiles..."
mkdir $HOME/dotfiles
cp -r $SRC_SYS_PATH/ $HOME/dotfiles

# Install apps
echo "Installing packages & apps..."
$SRC_SCRIPTS_PATH/apps-install.sh

# Setup bash_profile
echo "Setting up bash_profile..."
mv $HOME/.bash_profile $HOME/.bash_profile_backup
cp $SRC_SHELL_PATH/.bash_profile $HOME
source $HOME/.bash_profile

# Setup git
mv $HOME/.gitconfig $HOME/.gitconfig_backup
cp $SRC_CONFIG_PATH/.gitconfig $HOME

# Set MacOS Defaults
echo "Setting up mac os defaults..."
source $SRC_SCRIPTS_PATH/mac-os-defaults.sh

echo "Setup complete."
