lua << EOF
local opts = {
    tools = { autoSetHints = true }
}
require('rust-tools').setup(opts)
EOF
