#!/bin/bash

############# Install brew #############
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cp ./templates/default-zprofile $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
echo "[Done] installed brew"

############# Install zsh #############
brew install zsh
brew link zsh
chsh -s $(which zsh)
echo "[Done] installed zsh"

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
echo "[Done] installed zsh-zap"


#### TODO: Required restart terminal windows ####

############# Brew install #############
brew bundle --file=./Brewfile

############# Replace my default-zshrc file #############
cp ./templates/default-zshrc $HOME/.zshrc
source $HOME/.zshrc
echo "Replaced templated $HOME/.zshrc"

############# Run post-install scripts in Zsh #############
zsh ./post-install/asdf.sh
zsh ./post-install/miniconda.sh

############# Config vimrc #############
cp ./templates/default-vimrc $HOME/.vimrc
echo "Replaced templated $HOME/.vimrc"

############# Complete #############
echo "Your Mac has been configured!"
echo "Please restart your terminal to see the changes"
