let mapleader = " "

" No Yank deletes
nnoremap <leader>d "_d
nnoremap x "_x
vnoremap <leader>p "_P

" Select all
nmap <C-a> gg<S-v>G

" Window movement mappings
nnoremap <leader><left> :wincmd h<CR>
nnoremap <leader><down> :wincmd j<CR>
nnoremap <leader><up> :wincmd k<CR>
nnoremap <leader><right> :wincmd l<CR>
nnoremap <leader>b :wincmd h<CR>
nnoremap <leader>é :wincmd j<CR>
nnoremap <leader>p :wincmd k<CR>
nnoremap <leader>o :wincmd l<CR>

" Buffer related mappings
nnoremap <C-left> :bprevious<CR>
nnoremap <C-up> :bdelete<CR>
nnoremap <C-right> :bnext<CR>
nnoremap <leader>à :bprevious<CR>
nnoremap <leader>y :bdelete<CR>
nnoremap <leader>. :bnext<CR>

" Miscellaneous
nnoremap <leader>so :source $MYVIMRC<CR>
cmap W w !sudo tee > /dev/null %

nnoremap <leader>fo :make format
