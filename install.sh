#!/bin/sh
set -e
ln -sf $PWD/.spacemacs ~/.spacemacs
if [ ! -d ~/.emacs.d ] ; then 
	git clone --recursive http://github.com/syl20bnr/spacemacs ~/.emacs.d
fi
rm -rf ~/.emacs.d/private
ln -sf $PWD/spacemacs/private/ ~/.emacs.d
if [ ! -d ~/.oh-my-zsh ] ; then
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi
ln -sf $PWD/.gitconfig ~/.gitconfig
cat aliases.sh >> ~/.zshrc
ln -sf $PWD/.zshrc ~/.zshrc
