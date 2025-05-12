local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- netrw
map('n', '<leader>e', '<cmd>Ex<cr>', opts)

-- move a line of code up or down
map('n', '<leader>mj', '<cmd>m +1<cr>', opts)
map('n', '<leader>mk', '<cmd>m -2<cr>', opts)

-- duplicate line
map('n', '<leader>dl', '<cmd>:t.<cr>', opts)

-- keep the paste register
map('x', '<leader>p', '"_dp', opts)

-- remove newbie crutches
map('n', '<up>', '<nop>', opts)
map('n', '<down>', '<nop>', opts)
map('n', '<left>', '<nop>', opts)
map('n', '<right>', '<nop>', opts)

map('i', '<up>', '<nop>', opts)
map('i', '<down>', '<nop>', opts)
map('i', '<left>', '<nop>', opts)
map('i', '<right>', '<nop>', opts)

map('v', '<up>', '<nop>', opts)
map('v', '<down>', '<nop>', opts)
map('v', '<left>', '<nop>', opts)
map('v', '<right>', '<nop>', opts)

--commenting
vim.keymap.set('n', '--', 'gcc', { remap = true, desc = 'comment single line' })
vim.keymap.set('v', '--', 'gc', { remap = true, desc = 'comment selection' })
vim.keymap.set({'n', 'x'}, '==', function()
  return require('vim._comment').operator()
end, { expr = true, desc = 'comment operator' })
