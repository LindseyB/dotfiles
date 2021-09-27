#!/bin/bash

set -x

git config --global core.editor "vim"
git config --global push.default simple
git config --global commit.gpgsign true

touch ".dotfiles-loaded"
echo "Dotfiles loaded"

source .bash_profile
