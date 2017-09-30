#!/bin/sh
# This script creates symbolic links from the cloned repository to config files
# in the /root directory and also to some files that are root-writable only.

# zsh
echo "Linking zsh"
sudo ln -s .zshrc /root/.zshrc
sudo ln -s .zshrc.zni /root/.zshrc.zni
sudo ln -s .zcompdump /root/.zcompdump

echo "Cloning the zsh-syntax-highlighting repository"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    /root/.zsh-syntax-highlighting

# inputrc
echo "Linking inputrc"
sudo ln -s .inputrc /root/.inputrc

# Creating the /root/config/ directory
sudo mkdir -p /root/.config

# neovim
echo "Linking Neovim configuration"
sudo ln -s config/nvim /root/.config/nvim

# fontconfig
echo "Linking fontconfig"
sudo ln -s etc/fonts_local.conf /etc/fonts/local.conf

