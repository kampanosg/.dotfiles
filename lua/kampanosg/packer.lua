return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Editor
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('ThePrimeagen/git-worktree.nvim')
    use("mbbill/undotree")
    use('nvim-tree/nvim-web-devicons')
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use { 'goolord/alpha-nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use('yamatsum/nvim-cursorline')


    -- Coding
    use('tpope/vim-commentary')
    use('ThePrimeagen/harpoon')
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }
    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    })


    -- Languages
    -- use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use('hrsh7th/cmp-nvim-lua')
    use("hrsh7th/nvim-cmp")
    use('hrsh7th/cmp-nvim-lsp-signature-help')
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('simrat39/rust-tools.nvim')


    -- Theme
    use('navarasu/onedark.nvim')
    use('xiyaowong/nvim-transparent')
end)
