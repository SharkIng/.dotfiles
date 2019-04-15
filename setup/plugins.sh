#!/bin/bash

# Install autojump
git clone \
  git://github.com/wting/autojump.git \
  /tmp/autojump/

/tmp/autojump/install.py

# Install auto-completions
git clone \
  https://github.com/zsh-users/zsh-completions \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-completions

# Install autosuggestion
git clone \
  https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

