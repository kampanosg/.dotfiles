return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Editor
  use('tpope/vim-fugitive')
  use("nvim-lua/plenary.nvim")
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } 

  -- Theme
  use 'navarasu/onedark.nvim'

end)
