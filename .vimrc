" 显示行号
set nu

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
Plug 'w0ng/vim-hybrid'
call plug#end()
