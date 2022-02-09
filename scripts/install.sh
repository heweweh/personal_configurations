#!/bin/bash

# make sure nvim is up-to-date
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:dns/gnu
sudo apt install neovim global exuberant-ctags curl

echo "installing fonts ..."
sudo cp ~/.vim/vim/fonts/*.*tf /usr/share/fonts
fc-cache

# donwload plug
mkdir -p ~/.vim/autoload
cd ~/.vim
git clone https://github.com/junegunn/vim-plug.git
cd ~/.vim/autoload
rm plug.vim
ln -sv ../vim-plug/plug.vim

# softlink for configuration files
cd ~/
rm .vimrc
ln -sv ~/.vim/vim/vimrc .vimrc

#done
