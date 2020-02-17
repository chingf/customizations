" Pathogen for vim plugins
call pathogen#infect()

" Detect filetypes
filetype plugin indent on

" Number each row
set nu

" Turn syntax highlighting on
syntax on 

" Highlight matching pairs of brackets. Use the '%' character to jump between
" them.
set matchpairs+=<:>

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Make indents entered by the tab key consist of 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Enable folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Subtle highlighting of column 80 
" Use the commented version if you want to highlight all offending characters.
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" Shortcut for clearing search highlights through "\\" 
nnoremap <Leader><Leader> :noh<cr>

" Opens NERDTree automatically when vim starts up in a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Map Ctrl-n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close Vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
