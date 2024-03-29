#!/usr/bin/env bash

install_rvm() {
  RUBY_VIERSION=3.2.2

  # Install RVM
  # Add Repo Keys
  gpg2 --recv-keys \
    409B6B1796C275462A1703113804BB82D39DC0E3 \
    7D2BAF1CF37B13E2069D6956105BD0E739499BDB

  # Install rvm
  \curl -sSL https://get.rvm.io | bash -s stable 1>&2
}

if ! [ -d ${HOME}/.rvm ]; then
	install_rvm
fi