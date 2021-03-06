#!/bin/bash

# TODO: Add pre-deployment checks here

# This script assumes that the environment variable $HOME is set to current
# user's home directory.  If not, you need to manually set it here:
#HOME=/home/user_name
DOTFILES=$HOME'/.dotfiles'
mkdir -p $HOME/.bin

# Set up tmux
ln -s $DOTFILES/.tmux.conf $HOME/.tmux.conf

# Set up Git
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

# Set up zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
ln -s $DOTFILES/.zshrc $HOME/.zshrc

# Set up ripgrep, diff-so-fancy
ln -s $DOTFILES/.ripgreprc $HOME/.ripgreprc
git clone https://github.com/so-fancy/diff-so-fancy $HOME/.diff-so-fancy
ln -s $HOME/.diff-so-fancy/diff-so-fancy $HOME/.bin/diff-so-fancy

# TODO: setup fzf

# Set up Vim
ln -s $DOTFILES/.vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/bundle
mkdir -p $HOME/.vim/swp
mkdir -p $HOME/.vim/undo
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Set up conda
ln -s $DOTFILES/.condarc $HOME/.condarc
