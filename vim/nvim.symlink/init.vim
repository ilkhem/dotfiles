source ~/.config/nvim/plugin/plugins.vim

let mapleader =","
let maplocalleader =","

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

" Nerd tree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" configure neovim to use pyenv
let g:python3_host_prog = expand('$HOME/.pyenv/versions/3.7.0/envs/neovim3/bin/python')
let g:python_host_prog = expand('$HOME/.pyenv/versions/2.7.14/envs/neovim2/bin/python')

""" VIMTEX
" configure deoplete with vimtex
call deoplete#custom#var('omni', 'input_patterns', {
        \ 'tex': g:vimtex#re#deoplete
        \})

let g:vimtex_complete_close_braces = 1

let g:matchup_override_vimtex = 1

" setup okular
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" nvr to work with latex callbacks for nvim
let g:vimtex_compiler_progname = 'nvr'

