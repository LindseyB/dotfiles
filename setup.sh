#!/bin/bash

set -x

git config --global core.editor "vim"
git config --global push.default simple
git config --global commit.gpgsign true

source .bash_profile
