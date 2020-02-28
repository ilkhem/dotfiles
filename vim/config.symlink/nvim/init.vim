source ~/.config/nvim/plugin/plugins.vim

" Some basics:
set nocompatible
set encoding=utf-8
set number relativenumber
syntax on
filetype plugin on
set number
set mouse=a
set ts=4

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set background=dark
" colorscheme solarized8

" Showcase comments in italics
highlight Comment cterm=italic gui=italic


" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" persistent undo
set undodir=~/.config/nvim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" misc
set autoindent
set expandtab
set cursorline
set showmatch
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
set splitright                        " Open new splits to the right
set splitbelow                        " Open new splits to the bottom
set history=500
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set showcmd                           " Show size of visual selection
let python_highlight_all=1

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Get off my lawn - helpful when learning Vim :)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" nvr to work with latex callbacks for nvim
let g:vimtex_compiler_progname = 'nvr'
