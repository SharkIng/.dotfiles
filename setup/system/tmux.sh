#!/bin/bash

# Remove old .tmux dotfiles
rm -rf $HOME/.tmux

# Install .vim dotfiles
git clone \
  https://github.com/gpakosz/.tmux.git

# Setup .vim
ln -s -f $HOME/.tmux/.tmux.conf $HOME/

# Symlink custom file
#cp .tmux/.tmux.conf.local . # use dotfile local


# Install tmuxinator (Optional, need ruby-gem)
gem install tmuxinator
