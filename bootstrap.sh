#!/bin/bash

# Remove any existing conflicting files

if [ -f ~/.bash_profile ]
then
	mv .bash_profile .bash_profile.bkp
fi

if [ -f ~/.aliases ]
then
	mv .aliases .aliases.bkp
fi

if [ -f ~/.functions ]
then
	mv .functions .functions.bkp
fi

if [ -f ~/.tmux ]
then
	mv .tmux .tmux.bkp
fi

if [ -f ~/.vimrc ]
then
	mv .vimrc .vimrc.bkp
fi

# Symlink files into place

ln -s -f ~/src/dot_files/bash_profile ~/.bash_profile
ln -s -f ~/src/dot_files/aliases ~/.aliases
ln -s -f ~/src/dot_files/functions ~/.functions
ln -s -f ~/src/dot_files/vimrc ~/.vimrc
ln -s -f ~/src/dot_files/tmux.conf ~/.tmux.conf

# Install Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

