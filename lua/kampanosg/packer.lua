return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Editor
  use('tpope/vim-fugitive')
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use('ThePrimeagen/git-worktree.nvim')
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } } 
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
  use("mbbill/undotree")


  -- Coding
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }


  -- Theme
  use 'navarasu/onedark.nvim'

end)
