#!/bin/zsh

# Init google-cloud-sdk before completion plugins
sed -i '' 's/# {{{ google-cloud-sdk }}}/source "$(brew --prefix)\/share\/google-cloud-sdk\/path.zsh.inc"\nsource "$(brew --prefix)\/Caskroom\/google-cloud-sdk\/latest\/google-cloud-sdk\/completion.zsh.inc"/' ~/.zshrc
source ~/.zshrc
echo "[Done] post-install google-cloud-sdk"
