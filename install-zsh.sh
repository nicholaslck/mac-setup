#!/bin/bash

/bin/bash -c "NONINTERACTIVE=1 $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "[Done] installed brew"

brew install zsh
chsh -s /bin/zsh
echo "[Done] installed zsh"

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
echo "[Done] installed zsh-zap"

