#!/bin/zsh

echo 'alias l="ls -lah"' >> ${ZDOTDIR:-~}/.zshrc
echo 'alias c="clear"' >> ${ZDOTDIR:-~}/.zshrc
echo 'alias reboot="sudo /sbin/reboot"' >> ${ZDOTDIR:-~}/.zshrc
echo 'alias shutdown="sudo /sbin/shutdown -h now"' >> ${ZDOTDIR:-~}/.zshrc
echo '' >> ${ZDOTDIR:-~}/.zshrc
