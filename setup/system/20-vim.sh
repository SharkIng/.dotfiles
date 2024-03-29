#!/bin/sh

# Remove .vim folder
rm -rf "$HOME"/.vim

# Install .vim dotfile
git clone \
  https://github.com/gpakosz/.vim.git \
  "$HOME"/.vim

# Setup .vim
ln -fs "$HOME"/.vim/.vimrc "$HOME"

# Symlink custom file
ln -fs "$HOME"/.dotfiles/vim/vimrc.local.symlink "$HOME"/.vimrc.local # use dotfiles local

# Use heavenly branch with add-ons
cd "$HOME"/.vim && \
  git checkout heavenly && \
  git submodule init && \
  git submodule update
