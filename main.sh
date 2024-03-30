#!/bin/bash

############# Install brew and zsh #############
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cp ./templates/default-zprofile ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
echo "[Done] installed brew"

brew install zsh
brew link zsh
chsh -s $(which zsh)
echo "[Done] installed zsh"

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
echo "[Done] installed zsh-zap"

############# Replace my default-zshrc file #############
cp ./templates/default-zshrc ~/.zshrc
source ~/.zshrc
echo "Replaced templated ~/.zshrc"

############# Brew install #############
brew bundle --file=./Brewfile

############# Run post-install scripts in Zsh #############
zsh ./zsh-scripts/post-install-google-cloud-sdk.sh
zsh ./zsh-scripts/post-install-asdf.sh
zsh ./zsh-scripts/post-install-miniconda.sh

############# Config vimrc #############
cp ./templates/default-vimrc ~/.vimrc
echo "Replaced templated ~/.vimrc"

############# Complete #############
echo "Your Mac has been configured!"
echo "Please restart your terminal to see the changes"
