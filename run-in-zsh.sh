#!/bin/zsh

brew bundle --file=./Brewfile

/bin/zsh ./zsh-scripts/post-install-asdf.sh
/bin/zsh ./zsh-scripts/post-install-miniconda.sh
/bin/zsh ./zsh-scripts/post-install-google-cloud-sdk.sh
/bin/zsh ./zsh-scripts/config-alias.sh
/bin/zsh ./zsh-scripts/config-zshrc.sh
