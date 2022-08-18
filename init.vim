runtime ./plug.vim
runtime ./maps.vim
runtime ./maps.bepo.vim

set nocompatible
filetype plugin indent on
syntax on

set number
set relativenumber
set wildmenu
set hidden
set incsearch
set hlsearch
set scrolloff=10
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
set guifont="FiraCode Retina"
set mouse=nv
set cursorline
set undofile

set expandtab
set autoindent
set cc=80

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
                        \ execute 'Telescope git_files' | execute 'cd '.argv()[0] | endif

" colorise les nbsp
highlight NbSp ctermbg=lightred guibg=lightred
match NbSp / /

let g:goyo_width=120
