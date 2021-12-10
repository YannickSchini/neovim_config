
call plug#begin('~/.config/nvim/plugged')

Plug 'sainnhe/gruvbox-material' " Colorscheme of choice
Plug 'tpope/vim-surround' " Management of surrounding pairs
Plug 'tpope/vim-commentary' " Easy commenting/uncommenting
Plug 'neovim/nvim-lspconfig' " Some LSP configs
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter integration (syntax highlighting)
Plug 'hrsh7th/nvim-cmp' " Completion engine
Plug 'hrsh7th/cmp-nvim-lsp' " LSP data source for completion
Plug 'hrsh7th/cmp-vsnip' " Snippet data source for completion
Plug 'hrsh7th/vim-vsnip' " Snippet engine
Plug 'rafamadriz/friendly-snippets' " Prewritten snippets
Plug 'onsails/lspkind-nvim' " Autocompletion icons for the LSP
Plug 'nvim-lua/popup.nvim' " Telescope dependency
Plug 'nvim-lua/plenary.nvim' " Telescope dependency
Plug 'nvim-telescope/telescope.nvim' " Fuzzy Finder & More
Plug 'kyazdani42/nvim-web-devicons' " Devicons for Telescope
Plug 'hoob3rt/lualine.nvim' " Status line
Plug 'ap/vim-buftabline' " Buffer info in the tabline
Plug 'ThePrimeagen/harpoon' " Quick navigation between files
Plug 'junegunn/goyo.vim' " Distraction free mode

call plug#end()
