set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'chriskempson/base16-vim'
call vundle#end()
filetype plugin indent on
filetype plugin on
syntax on

colorscheme base16-chalk
set nu
set wildmode=longest,list,full
set wildmenu
highlight LineNr ctermfg=186 ctermbg=8

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

" Navigate inside .vim/colors
" git clone git://github.com/chriskempson/base16-vim.git base16
" cp base16/colors/*.vim .
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
