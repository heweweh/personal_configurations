#!/bin/bash
CONFIGURATION_PATH=$(pwd)

# make sure nvim is up-to-date
sudo add-apt-repository ppa:dns/gnu
sudo apt install neovim global exuberant-ctags curl

echo "installing fonts ..."
sudo cp ${CONFIGURATION_PATH}/fonts/*.*tf /usr/share/fonts
fc-cache

# donwload plug
mkdir -p ~/.vim/autoload
cd ~/.vim
git clone https://github.com/junegunn/vim-plug.git
cd ~/.vim/autoload
rm plug.vim
ln -sv ../vim-plug/plug.vim

# softlink for configuration files
rm ~/.vimrc
ln -sv ${CONFIGURATION_PATH}/vimrc ~/.vimrc
mkdir -p ~/.config/nvim/
ln -sv ${CONFIGURATION_PATH}/init.vim ~/.config/nvim/init.vim
echo "source ${CONFIGURATION_PATH}/tmux.conf" >> ~/.tmux.conf
#done
