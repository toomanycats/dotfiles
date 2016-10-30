set nocompatible               "be iMproved, required
filetype off                   "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins


"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Keep Plugin commands between vundle#begin/end.
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fs111/pydoc.vim'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'python-rope/ropevim'
Plugin 'sjl/gundo.vim'
Plugin 'vimoutliner/vimoutliner.git'
call vundle#end()             "required

set showmatch
set matchpairs=(:),{:},[:]

filetype plugin indent on     "required
set title " sets the xterm title to same as vim title
syntax enable
set foldlevel=99
setlocal foldmethod=indent
" old work around
set t_Co=256
set background=dark
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set number
set relativenumber
let mapleader=","
set mouse=a
set nojoinspaces
set smarttab
set colorcolumn=80
highlight ColorColumn ctermbg=8
set laststatus=2 " always show status line
nnoremap <leader>n :NERDTree<CR>
"nmap <CR> o<Esc>  add new line and move back up one

"pydoc
nnoremap <buffer> K :<C-u>execute "!pydoc " . expand("<cword>")<CR>

"colorscheme jellybeans
" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" remove trailing white space after :w
autocmd BufWritePre * :%s/\s\+$//e

" comment out  Python break points
nnoremap <leader>c :g/\s*\(#\)\@<!pdb.set_trace()/normal I#

" uncomment all Python break points
nnoremap <leader>uc :g/\s*#pdb.set_trace()/normal ^x

" correct missing space after comma, period or question mark
nnoremap <leader>cs :%s/\([,.?]\)\(\w\+\)/\1 \2/g

" % will match { or comments, remap % to v for speed
noremap % v%

" aspell: use Control v, then control T
" http://aspell.net/man-html/Using-Aspell-with-other-Applications.html
map ^T :w!<CR>:!aspell check %<CR>:e! %<CR>

" gundo F5 to see undo tree
nnoremap <F5> :GundoToggle<CR>
" fix for python3
" https://bitbucket.org/sjl/gundo.vim/issues/42/about-python3-support
let gundo_prefer_python3 = 1

" fix Gundo with Python3
" https://bitbucket.org/sjl/gundo.vim/issues/42/about-python3-support
let gundo_prefer_python3 = 1

" ropevim
let ropevim_vim_completion=0
let ropevim_extended_complete=0
let ropevim_codeassist_maxfixes=1
let ropevim_goto_def_newwin="tabnew"
