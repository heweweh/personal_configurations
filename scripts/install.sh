#!/bin/bash

# make sure nvim is up-to-date
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim exuberant-ctags curl

# donwload plug
cd ~/.vim
mkdir -p ~/.vim/autoload
git clone https://github.com/junegunn/vim-plug.git
cd ~/.vim/autoload
ln -s ../vim-plug/plug.vim

# download global
cd ~/.vim
curl https://www.tamacom.com/global/global-6.6.6.tar.gz | tar xzv
cd ~/.vim/global-6.6.6
./configure
make
echo "installing GNU Global ..."
sudo make install

mkdir -p ~/.vim/manually-plugged/plugin
cd ~/.vim/manually-plugged/plugin
ln -s ~/.vim/global-6.6.4/gtags.vim
ln -s ~/.vim/global-6.6.4/gtags-cscope.vim

echo "installing fonts ..."
sudo cp ~/.vim/vim/fonts/*.*tf /usr/share/fonts
fc-cache

# softlink for configuration files
cd ~/
ln -s ~/.vim/vim/vimrc .vimrc
ln -s ~/.vim/global-6.6.4/gtags.conf .globalrc
ln -s ~/.vim/vim/scripts/gtags-project-init

# echo
echo "NOTE: You can manully select fonts in preferences of your terminal."

#done
