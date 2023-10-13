#!/bin/zsh

brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
echo "[Done] installed asdf"

brew install gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 
asdf install nodejs latest
asdf global nodejs latest
echo "[Done] installed nodejs latest"
