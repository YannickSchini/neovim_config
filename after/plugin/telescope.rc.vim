if !exists('g:loaded_telescope') | finish | endif

nnoremap <leader>ref <Cmd>Telescope lsp_references<CR>
nnoremap <leader>of <Cmd>Telescope find_files<CR>
nnoremap <leader>ff <Cmd>Telescope live_grep<CR>
nnoremap <C-down> <Cmd>Telescope buffers<CR>
nnoremap <C-j> <Cmd>Telescope buffers<CR>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    file_ignore_patterns = { "venv", ".git" }
  }
}
EOF
