" ALL PLUGINS TO INSTALL AND UPDATE ARE HERE

call plug#begin()
" VERIFIED PLUGINS BLOCK
" TELESCOPE
" Telescope prerequisites
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" Telescope plugins
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

" system-clipboard accessablity via ssh
Plug 'ojroques/nvim-osc52'
" all for syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'windwp/nvim-autopairs'


" LSP
Plug 'williamboman/mason.nvim' " language tools installer
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' " enable LSP
Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'williamboman/nvim-lsp-installer' " language server installer
" cmp
Plug 'hrsh7th/nvim-cmp' " The completion plugin
" cmp sources
Plug 'hrsh7th/cmp-nvim-lsp' " source from lsp server to completion
Plug 'hrsh7th/cmp-buffer' " source from buffer to completion
Plug 'hrsh7th/cmp-path' " source from path to completion

" Snippets
Plug 'L3MON4D3/LuaSnip' " snippet engine
Plug 'saadparwaiz1/cmp_luasnip' " lua snippet completions
Plug 'rafamadriz/friendly-snippets' " a bunch of snippets to use

" APPEARENCE
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-tree/nvim-web-devicons' " icons
Plug 'romgrk/barbar.nvim' " tabs on top
Plug 'nvim-lualine/lualine.nvim' " statusline

" DEBUG
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'

" UTILITIES
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ahmedkhalf/project.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'terrortylor/nvim-comment'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/git-conflict.nvim', {'tag': '*'}

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown' }

call plug#end()

