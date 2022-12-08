vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Editor
  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'
  use 'feline-nvim/feline.nvim'
  use 'yamatsum/nvim-cursorline'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }


  -- Coding
  use 'lewis6991/gitsigns.nvim'
--  use 'yamatsum/nvim-cursorline'
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }


  -- Languages
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Theme
  use 'navarasu/onedark.nvim'

end)
