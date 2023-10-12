#!/bin/zsh

brew install awscli
brew install --cask google-cloud-sdk

sed -i '' '/# Load and initialise completion system/i\
# Init google-cloud-sdk\
source "\$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"\
source "\$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"\

' ${ZDOTDIR:-~}/.zshrc

echo "[Done] installed cloud sdk"
