local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move a line of code up or down
map('n', '<leader>mj', '<cmd>m +1<CR>', opts)
map('n', '<leader>mk', '<cmd>m -2<CR>', opts)
map('n', '<leader>mj', '<cmd>m +1<CR>', opts)
map('n', '<leader>mk', '<cmd>m -2<CR>', opts)

map('n', '<leader>dl', '<cmd>:t.<CR>', opts) -- Duplicate line

-- barbar

-- goto buffer in position...
map('n', '<S-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<S-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<S-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<S-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<S-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<S-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<S-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<S-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<S-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<S-0>', '<Cmd>BufferLast<CR>', opts)

map('n', '<S-w>', '<Cmd>BufferClose<CR>', opts) -- close buffer
map('n', '<S-,>', '<Cmd>BufferPrevious<CR>', opts) -- move to prev buffer
map('n', '<S-.>', '<Cmd>BufferNext<CR>', opts) -- move to next buffer
