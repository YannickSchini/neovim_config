
call plug#begin('~/.config/nvim/plugged')

Plug 'sainnhe/gruvbox-material' " Colorscheme of choice
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-surround' " Management of surrounding pairs
Plug 'tpope/vim-commentary' " Easy commenting/uncommenting
Plug 'neovim/nvim-lspconfig' " Some LSP configs
Plug 'glepnir/lspsaga.nvim' " LSP UI enhancements
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter integration (syntax highlighting)
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind-nvim' " Autocompletion icons for the LSP
Plug 'nvim-lua/popup.nvim' " Telescope dependency
Plug 'nvim-lua/plenary.nvim' " Telescope dependency
Plug 'nvim-telescope/telescope.nvim' " Fuzzy Finder & More
Plug 'kyazdani42/nvim-web-devicons' " Devicons for Telescope
Plug 'hoob3rt/lualine.nvim' " Status line
Plug 'ap/vim-buftabline' " Buffer info in the tabline
Plug 'ThePrimeagen/harpoon' " Quick navigation between files

call plug#end()
