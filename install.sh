#!/bin/bash

set -x

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

unset GIT_EDITOR

git config --global core.editor "vim"
git config --global push.default current
git config commit.gpsign true
git config commit.gpgsign true

touch ".dotfiles-loaded"
echo "Dotfiles loaded"

source .bash_profile
