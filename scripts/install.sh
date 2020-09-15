#!/bin/bash

# make sure vim is up-to-date
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# donwload plug
cd ~/.vim
mkdir -p ~/.vim/autoload
git clone https://github.com/junegunn/vim-plug.git
cd ~/.vim/autoload
ln -s ../vim-plug/plug.vim

# install exuberant-ctags
echo "installing exuberant-ctags,curl ..."
sudo apt install exuberant-ctags curl

# download global
cd ~/.vim
curl https://www.tamacom.com/global/global-6.6.4.tar.gz | tar xzv
cd ~/.vim/global-6.6.4
./configure
make
echo "installing GNU Global ..."
sudo make install

mkdir -p ~/.vim/manually-plugged/plugin
cd ~/.vim/manually-plugged/plugin
ln -s ~/.vim/global-6.6.4/gtags.vim
ln -s ~/.vim/global-6.6.4/gtags-cscope.vim

# softlink for configuration files
cd ~/
ln -s ~/.vim/vim/vimrc .vimrc
ln -s ~/.vim/global-6.6.4/gtags.conf .globalrc
ln -s ~/.vim/vim/scripts/gtags-project-init

# echo
echo "NOTE: You can manully install fonts in vim/fonts/ if needed."

#done
