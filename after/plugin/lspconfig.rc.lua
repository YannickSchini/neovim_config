local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

        -- Mappings.
        local opts = { noremap=true, silent=true }

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        buf_set_keymap('n', '<space>gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
        buf_set_keymap('n', '<space>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap('n', '<space>gtd', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        buf_set_keymap('n', '<space>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
        buf_set_keymap('n', '<space>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)

        require'completion'.on_attach(client, bufnr)

        --protocol.SymbolKind = { }
        protocol.CompletionItemKind = {
                '', -- Text
                '', -- Method
                '', -- Function
                '', -- Constructor
                '', -- Field
                '', -- Variable
                '', -- Class
                'ﰮ', -- Interface
                '', -- Module
                '', -- Property
                '', -- Unit
                '', -- Value
                '', -- Enum
                '', -- Keyword
                '﬌', -- Snippet
                '', -- Color
                '', -- File
                '', -- Reference
                '', -- Folder
                '', -- EnumMember
                '', -- Constant
                '', -- Struct
                '', -- Event
                'ﬦ', -- Operator
                '', -- TypeParameter
        }
end

nvim_lsp.pyright.setup {
        on_attach = on_attach,
        filetypes = { "python" }
}

-- icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)
