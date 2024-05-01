#!/bin/zsh

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 
asdf install nodejs latest
asdf global nodejs latest
echo "[Done] installed nodejs latest"

asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
echo "[Done] installed ruby latest"

asdf plugin add flutter
asdf install flutter latest
asdf global flutter latest
echo "[Done] installed flutter latest"
