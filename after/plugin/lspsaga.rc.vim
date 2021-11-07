if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

EOF

nnoremap <leader>K <Cmd>Lspsaga hover_doc<CR>
inoremap <C-k> <Cmd>Lspsaga signature_help<CR>
