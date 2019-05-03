#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"

sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install -y git-core
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo -e "\" 显示行号\nset nu\n\n\" 语法高亮\nsyntax enable\nsyntax on\n" >> ~/.vimrc
echo -e "\" 设置主题\nset background=dark\ncolorscheme hybrid\n" >> ~/.vimrc
echo -e "\" 插件列表\ncall plug#begin('~/.vim/plugged')\nPlug 'mhinz/vim-startify'\nPlug 'vim-airline/vim-airline'\nPlug 'vim-airline/vim-airline-themes'\nPlug 'yggdroot/indentline'\nPlug 'w0ng/vim-hybrid'\ncall plug#end()\n" >> ~/.vimrc
echo ":source ~/.vimrc" | vim
vim -c ":source ~/.vimrc" -c "PlugInstall" -c "qa"

echo "安装完成"
