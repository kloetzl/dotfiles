#!/usr/bin/make -f

SHELL=zsh

.PHONY: install uninstall quiltrc gitconfig
install: quiltrc gitconfig
	echo "ZDOTDIR=$(PWD)" >> ~/.zshenv
	echo "DEFAULT_USER=$$(whoami)" >> local.zsh
	echo "Installation successful.\nNow restart the shell…"

quiltrc:
	ln -sT $(PWD)/quiltrc ~/.quiltrc

gitconfig:
	ln -sT $(PWD)/$@ ~/.$@

uninstall:
	[[ -L ~/.quiltrc ]] && rm ~/.quiltrc
	[[ -L ~/.gitconfig ]] && rm ~/.gitconfig
