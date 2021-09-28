#!/bin/bash

set -x

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

git config --global core.editor "vim"
git config --global push.default simple
git config --global commit.gpgsign true

touch ".dotfiles-loaded"
echo "Dotfiles loaded"

source .bash_profile
