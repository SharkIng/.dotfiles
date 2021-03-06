#!/bin/bash

# Init setup to the machine, Default now is Debian 9
set -e

USERNAME=$1

# Use the generated debian 9 sources.list
if [ -f /etc/apt/sources.list ]; then
  mv /etc/apt/sources.list{,.bak}
fi
curl -sSL -H 'Cache-Control: no-cache' -o /etc/apt/sources.list \
  "https://github.com/SharkIng/.dotfiles/raw/master/setup/deb/stable.sources.list"

# Install necessary system level dependency
# Upgrade and dist-upgrade
apt-get -y update && \
  apt-get -y upgrade && \
  apt-get -y dist-upgrade

# Suck as: vim, tmux, git. zsh
apt-get -y update && \
  apt-get -y install vim \
    tmux \
    git \
    zsh \
    apt-transport-https \
    ca-certificates \
    curl \
    wget \
    gnupg2 \
    openssh-server \
    sudo \
    net-tools \
    dnsutils \
    dirmngr \
    python \
    python3 \
    python-pip \
    python3-pip

# Remove uncessary software (optional)
apt-get -y purge unscd

# Cleanup
apt-get -y autoremove && \
  apt-get -y autoclean

# Add Users
adduser \
  --uid 1116 \
  --shell /bin/zsh \
  --gecos '${USERNAME}' \
  --disabled-password \
  --home /home/s \
  ${USERNAME}

usermod -aG sudo ${USERNAME}

echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers