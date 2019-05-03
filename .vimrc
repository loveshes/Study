" 显示行号
set nu

" 设置缩进为4个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab


" 语法高亮
syntax enable
syntax on

" 使用主题
set background=dark
colorscheme hybrid

" 修改字体
set guifont=Consolas:h12
set guifontwide=Microsoft/YaHei:h12

" 插件列表
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
call plug#end()
