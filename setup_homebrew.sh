#!/bin/bash

echo "########################################################"
echo "#                     Homebrew"
echo "########################################################"

if [ -z "$(which brew)" ]
then
    echo "brew is not installed, installing now"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "brew is already installed, updating to latest version"
    brew update
    brew doctor
fi

brew --version

echo "########################################################"
echo "#                     Homebrew Finished"
echo "########################################################"

echo ""
echo ""