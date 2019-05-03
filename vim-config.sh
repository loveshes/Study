#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"

sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install -y git-core

# 下载 vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 下载hybrid主题
mkdir ~/.vim/colors/
wget -q -P ~/.vim/colors/ https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim

# 下载.vimrc配置文件
wget -q -P ~/ https://raw.githubusercontent.com/LoveShes/Study/master/.vimrc

# 让vim插件生效
vim -c "source ~/.vimrc" -c "PlugInstall" -c "qa"

echo "安装完成"
