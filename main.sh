#!/bin/bash

############# Install brew and zsh #############
bash -c "NONINTERACTIVE=1 $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "[Done] installed brew"

brew install zsh
brew link zsh
chsh -s $(which zsh)
echo "[Done] installed zsh"

$(which zsh) <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
echo "[Done] installed zsh-zap"

############# Run scripts in Zsh #############
zsh ./run-in-zsh.sh

############# Complete #############
echo "You mac has been configured!"
echo "Please restart your terminal to see the changes"
