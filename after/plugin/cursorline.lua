require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 0,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 1,
    hl = { underline = true },
  }
}
