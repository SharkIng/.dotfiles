#!/bin/bash

# Install autojump
git clone \
  https://github.com/wting/autojump.git \
  /tmp/autojump/

cd /tmp/autojump/ && \
  ./install.py && \
  cd - || exit

# Install fzf
git clone \
  --depth 1 \
  https://github.com/junegunn/fzf.git \
  "$HOME"/.fzf

"$HOME"/.fzf/install

# Install auto-completions
git clone \
  https://github.com/zsh-users/zsh-completions.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-completions

# Install autosuggestion
git clone \
  https://github.com/zsh-users/zsh-autosuggestions.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone \
  https://github.com/zsh-users/zsh-syntax-highlighting.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

echo "Done"
