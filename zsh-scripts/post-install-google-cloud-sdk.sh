#!/bin/zsh

# Init google-cloud-sdk before completion plugins
sed -i '' '/# Load and initialise completion system/i\
# Init google-cloud-sdk\
source "\$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"\
source "\$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"\

' ${ZDOTDIR:-~}/.zshrc

source ${ZDOTDIR:-~}/.zshrc
echo "[Done] post-install google-cloud-sdk"
