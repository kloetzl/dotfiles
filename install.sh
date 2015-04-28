#!/bin/sh

echo "ZDOTDIR=$PWD" >> ~/.zshenv

# ignore changes to local file
git update-index --assume-unchanged .zsh/lib/local.zsh
