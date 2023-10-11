#!/bin/zsh

brew install --cask miniconda
conda init "$(basename "${SHELL}")"
echo "[Done] installed miniconda"
