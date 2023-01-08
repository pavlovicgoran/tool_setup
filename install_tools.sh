#!/bin/bash

######################################################
#                  Install Tools
######################################################

git_tools=("kaleidoscope" "tower")
dev_tools=("visual-studio-code" "xcodes" "devutils" "proxyman" "postman" "iexplorer")
productivity_tools=("raycast" "istat-menus" "iterm2" "bitwarden" "obsidian")

install_tools() {
    # Make Helper Func Executable
    chmod u+x install_brew_cask

    for tool in $1; do
        ./install_brew_cask $tool
    done
}

# Setup Homebrew
chmod u+x setup_homebrew.sh
./setup_homebrew.sh

# Make install asdf to manage language environments
brew install asdf

# Install Tools
install_tools $git_tools
install_tools $productivity_tools
install_tools $dev_tools
