#!/bin/bash

sudo apt install curl

# Vim/Nvim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp init.vim ~/.config/nvim/init.vim
cp init.vim ~/.vimrc

# Kitty

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir -p ~/.config/kitty

git clone --depth 1 git@github.com:dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

cp kitty.conf ~/.config/kitty/kitty.conf

cd ~/.config/kitty

ln -s ./kitty-themes/themes/Chalkboard.conf ~/.config/kitty/theme.conf

# i3

sudo apt install i3

cp i3.conf ~/.config/i3/config
cp i3status.toml ~/.config/i3status/config.toml

echo "Install rust: curl https://sh.rustup.rs -sSf | sh"
echo "Install i3status-rust manually, install FontAwesome package"


