#!/bin/zsh

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
source ${ZDOTDIR:-~}/.zshrc
echo "[Done] post-install asdf"

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 
asdf install nodejs latest
asdf global nodejs latest
echo "[Done] installed nodejs latest"
