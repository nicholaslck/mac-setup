#!/bin/zsh

brew install awscli
brew install --cask google-cloud-sdk
echo -e '\n\n# init google-cloud-sdk' >> ${ZDOTDIR:-~}/.zshrc
echo -e 'source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"' >> ${ZDOTDIR:-~}/.zshrc
echo -e 'source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"' >> ${ZDOTDIR:-~}/.zshrc
echo "[Done] installed cloud sdk"
