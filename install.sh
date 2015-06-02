#!/bin/sh

echo "ZDOTDIR=$PWD" >> ~/.zshenv

# ignore changes to local file
git update-index --assume-unchanged zsh/lib/local.zsh

# setup global .gitconfig file
# For the moment I am using this, a symlink might also be possible.
cat .gitconfig >> ~/.gitconfig
