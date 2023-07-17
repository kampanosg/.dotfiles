require("bufferline").setup{
  options = {
    mode = 'buffers',
    numbers = 'ordinal',
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = false
      }
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    },
  }
}

