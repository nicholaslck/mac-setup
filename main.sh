#!/bin/bash

/bin/bash ./install-zsh.sh
/bin/zsh ./install-brew.sh
/bin/zsh ./install-asdf.sh
/bin/zsh ./install-miniconda.sh
/bin/zsh ./install-cloud-sdk.sh
/bin/zsh ./install-alias.sh

echo "You mac has been configured!"
echo "Please restart your terminal to see the changes"
