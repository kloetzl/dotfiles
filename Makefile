#!/usr/bin/make -f

SHELL=zsh
LINKS= quiltrc gitconfig clang-format

.PHONY: install uninstall $(LINKS)
install: $(LINKS)
	echo "ZDOTDIR=$(PWD)" >> ~/.zshenv
	echo "DEFAULT_USER=$$(whoami)" >> local.zsh
	wget 'https://gist.github.com/qrush/1595572/raw/6c453ddc959b93895ffbf4fd904e2ba60256c904/Menlo-Powerline.otf'
	mkdir -p ~/.local/share/fonts
	mv Menlo-Powerline.otf ~/.local/share/fonts
	echo "Installation successful.\nNow restart the shell…"

$(LINKS):
	ln -sT $(PWD)/$@ ~/.$@

uninstall:
	[[ -L ~/.quiltrc ]] && rm ~/.quiltrc
	[[ -L ~/.gitconfig ]] && rm ~/.gitconfig
	[[ -L ~/.clang-format ]] && rm ~/.clang-format
