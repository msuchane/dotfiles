#!/bin/sh
# This script creates symbolic links from the cloned repository to config files
# in the /root directory and also to some files that are root-writable only.

cwd=$(pwd)

# bash
echo "Improving bash"
cat ${cwd}/dot/bash_snippet.sh >> ~/.bashrc

# zsh
echo "Linking zsh"
sudo ln -s ${cwd}/dot/.zshrc /root/.zshrc
sudo ln -s ${cwd}/dot/.zshrc.zni /root/.zshrc.zni
sudo ln -s ${cwd}/dot/.zcompdump /root/.zcompdump

echo "Cloning the zsh-syntax-highlighting repository"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    /root/.zsh-syntax-highlighting

# inputrc
echo "Linking inputrc"
sudo ln -s ${cwd}/dot/.inputrc /root/.inputrc

# Creating the /root/config/ directory
sudo mkdir -p /root/.config

# neovim
echo "Linking Neovim configuration"
sudo ln -s ${cwd}/config/nvim /root/.config/nvim

# fontconfig
echo "Linking fontconfig"
sudo ln -s ${cwd}/etc/fonts_local.conf /etc/fonts/local.conf

