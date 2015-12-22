#!/usr/bin/make -f

SHELL=zsh

.PHONY: install uninstall
install: quiltrc gitconfig
	echo "ZDOTDIR=$PWD" >> ~/.zshenv
	echo "DEFAULT_USER=$(whoami)" >> local.zsh
	echo "Installation successful.\nNow restart the shell…"

quiltrc:
	ln -s quiltrc ~/.quiltrc

gitconfig:
	ln -s $@ ~/.$@

uninstall:
	[[ -L ~/.quiltrc ]] && rm ~/.quiltrc
	[[ -L ~/.gitconfig ]] && rm ~/.gitconfig
