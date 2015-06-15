#!/bin/sh

echo "ZDOTDIR=$PWD" >> ~/.zshenv

# setup global .gitconfig file
# For the moment I am using this, a symlink might also be possible.
cat .gitconfig >> ~/.gitconfig

echo "DEFAULT_USER=$(whoami)" >> zsh/lib/local.zsh

# ignore changes to local file
git update-index --assume-unchanged zsh/lib/local.zsh
