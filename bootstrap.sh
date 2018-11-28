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

ln -s bash_profile ~/.bash_profile
ln -s aliases ~/.aliases
ln -s functions ~/.functions
ln -s vimrc ~/.vimrc
