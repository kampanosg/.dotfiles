require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', 'rust', 'go' },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gww",
      node_incremental = "gwn",
      scope_incremental = "gwc",
      node_decremental = "gwb",
    },
  },
}
