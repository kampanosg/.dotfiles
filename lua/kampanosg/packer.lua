vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'mhinz/vim-startify'
  use 'lewis6991/gitsigns.nvim'
  use 'feline-nvim/feline.nvim' -- status bar
  use 'akinsho/toggleterm.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  } 

--  use {
--    'nvim-telescope/telescope.nvim', tag = '0.1.x',
--    requires = { {'nvim-lua/plenary.nvim'} }
--  }

  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use { 'junegunn/fzf.vim' }

  -- Theme
  use 'folke/tokyonight.nvim'
end)
