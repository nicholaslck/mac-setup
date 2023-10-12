#!/bin/zsh

brew install --cask miniconda
conda init zsh
conda config --set auto_activate_base false
echo "[Done] installed miniconda"
