set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'fs111/pydoc.vim'
Bundle 'hdima/python-syntax'
Bundle 'scrooloose/nerdtree'
Bundle 'tmhedberg/SimpylFold'
Bundle 'scrooloose/syntastic'
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'davidhalter/jedi-vim'
call vundle#end()            " required

filetype plugin indent on    " required
syntax enable
set foldmethod=indent
set foldlevel=99
:setlocal foldmethod=indent

set background=dark
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set number
let mapleader=","
set hlsearch
set mouse=a
set nojoinspaces
set smarttab

nnoremap <leader>n :NERDTree<CR>
:imap fj <Esc>
"nmap <CR> o<Esc> " add new line and move back up one 

colorscheme jellybeans 
" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Jedi options
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = "<leader>d"
"let g:jedi#documentation_command = "K"
""let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

