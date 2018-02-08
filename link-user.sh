#!/bin/sh
# This script creates symbolic links from the cloned repository to config files
# in the current user's home directory.

cwd=$(pwd)

# bash
echo "Improving bash"
cat ${cwd}/dot/bash_snippet.sh >> ~/.bashrc

# zsh
echo "Linking zsh"
ln -s ${cwd}/dot/.zshrc ~/.zshrc
ln -s ${cwd}/dot/.zshrc.zni ~/.zshrc.zni
ln -s ${cwd}/dot/.zcompdump ~/.zcompdump

echo "Cloning the zsh-syntax-highlighting repository"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ~/.zsh-syntax-highlighting

# inputrc
echo "Linking inputrc"
ln -s ${cwd}/dot/.inputrc ~/.inputrc

# mpv
echo "Linking mpv configuration"
ln -s ${cwd}/config/mpv ~/.config/mpv

# neovim
echo "Linking Neovim configuration"
ln -s ${cwd}/config/nvim ~/.config/nvim

