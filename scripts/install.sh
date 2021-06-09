#!/bin/bash

# make sure nvim is up-to-date
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:dns/gnu
sudo apt install neovim global exuberant-ctags curl

# donwload plug
cd ~/.vim
mkdir -p ~/.vim/autoload
git clone https://github.com/junegunn/vim-plug.git
cd ~/.vim/autoload
ln -s ../vim-plug/plug.vim

echo "installing fonts ..."
sudo cp ~/.vim/vim/fonts/*.*tf /usr/share/fonts
fc-cache

# softlink for configuration files
cd ~/
ln -s ~/.vim/vim/vimrc .vimrc
ln -s ~/.vim/vim/vimrc .vim/init.vim

# echo
echo "NOTE: You can manully select fonts in preferences of your terminal."

#done
