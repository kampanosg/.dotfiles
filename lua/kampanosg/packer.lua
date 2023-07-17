return require('packer').startup(function(use)


    -- Packer can manage itself
    use('wbthomason/packer.nvim')


    -- Theme
    -- use('navarasu/onedark.nvim')
    use('marko-cerovac/material.nvim')
    use {
        'kampanosg/grape.nvim',
        requires = 'tjdevries/colorbuddy.vim',
    }


    -- Editor
    use('tpope/vim-fugitive')
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('nvim-tree/nvim-web-devicons')
    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use { 'lewis6991/gitsigns.nvim', tag = 'release' }
    use('yamatsum/nvim-cursorline')
    use('stevearc/aerial.nvim')


    -- Coding
    use('tpope/vim-commentary')
    use('mbbill/undotree')
    use('ThePrimeagen/harpoon')
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { "folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons" }
    use {
        'johnfrankmorgan/whitespace.nvim',
        config = function ()
            require('whitespace-nvim').setup({
                highlight = 'DiffDelete',
                ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help' },
                ignore_terminal = true,
            })
        end
    }
    use('ray-x/go.nvim')
    use('ray-x/guihua.lua')


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
end)
