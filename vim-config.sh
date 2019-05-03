#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"

sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install -y git-core
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

wget -q -P ~/ https://raw.githubusercontent.com/LoveShes/Study/master/.vimrc

vim -c ":source ~/.vimrc" -c "PlugInstall" -c "qa"

echo "安装完成"
