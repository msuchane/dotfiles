#!/bin/sh
# This script creates symbolic links from the cloned repository to config files
# in the current user's home directory.

# zsh
echo "Linking zsh"
ln -s .zshrc ~/.zshrc
ln -s .zshrc.zni ~/.zshrc.zni
ln -s .zcompdump ~/.zcompdump

echo "Cloning the zsh-syntax-highlighting repository"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ~/.zsh-syntax-highlighting

# inputrc
echo "Linking inputrc"
ln -s .inputrc ~/.inputrc

# mpv
echo "Linking mpv configuration"
ln -s config/mpv ~/.config/mpv

# neovim
echo "Linking Neovim configuration"
ln -s config/nvim ~/.config/nvim

