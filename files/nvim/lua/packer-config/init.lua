return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-entire'
    use 'kana/vim-textobj-indent'
    use 'kana/vim-textobj-line'
    use 'whatyouhide/vim-textobj-xmlattr'
    use 'thinca/vim-textobj-between'
    use 'fvictorio/vim-textobj-backticks'
    use 'dracula/vim'
    use 'tpope/vim-commentary'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use '/home/mp/Playground/lua/plugins/tplugin.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/nvim-cmp'
    use 'jwalton512/vim-blade'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'rafcamlet/nvim-luapad'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use "rafamadriz/friendly-snippets"
    use "altercation/vim-colors-solarized"
    use "Pocco81/true-zen.nvim"
end)
