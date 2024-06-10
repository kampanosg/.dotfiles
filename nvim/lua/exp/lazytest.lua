local Terminal  = require('toggleterm.terminal').Terminal

local lazytest = Terminal:new({
  cmd = "lazytest",
  dir = ".",
  direction = "float",
  float_opts = {
    border = "curved",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazytest_toggle()
  lazytest:toggle()
end

vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>lua _lazytest_toggle()<CR>", {noremap = true, silent = true})
