#/bin/bash

export DOTFILES=$HOME/.dotfiles

if [ ! -d $DOTFILES ]; then
  git clone git@github.com:SharkIng/.dotfiles.git
fi

# Mike Directory
mkdir -p $HOME/dev/{$USER,repos,go,dockers,scripts,projects,virtualenv}

# change working dir
cd $DOTFILES

# Install oh-my-zsh
$DOTFILES/setup/system/zsh.sh

# Install dependency language
$DOTFILES/setup/lang/python.sh
$DOTFILES/setup/lang/ruby.sh

# Install system configs
$DOTFILES/setup/system/plugins.sh
$DOTFILES/setup/system/vim.sh
$DOTFILES/setup/system/tmux.sh

# Install applications (using apt-get need sudo)
sudo $DOTFILES/setup/applications/docker.sh
