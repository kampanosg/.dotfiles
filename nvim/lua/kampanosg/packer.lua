return require('packer').startup(function(use)

    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Editor
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('nvim-tree/nvim-web-devicons')
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use('yamatsum/nvim-cursorline')
    use('stevearc/aerial.nvim')
    use('akinsho/toggleterm.nvim')


    -- Coding
    use('tpope/vim-commentary')
    use('mbbill/undotree')
    use('ThePrimeagen/harpoon')
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }
    use { "folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons" }


    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Theme
    use('navarasu/onedark.nvim')
    -- use('xiyaowong/nvim-transparent')
end)
