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

# Figure out the absolute path of the dotfiles directory
DOTFILESDIRREL="$(dirname "$0")"
cd $DOTFILESDIRREL/..
DOTFILESDIR="$(pwd -P)"

ln -sf "$DOTFILESDIR" "$HOME/.dotfiles"
cat "$DOTFILESDIR/.bashrc" >> "$HOME/.bashrc"
