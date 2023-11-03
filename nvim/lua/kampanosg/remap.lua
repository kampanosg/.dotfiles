local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move a line of code up or down
map('n', '<leader>mj', '<cmd>m +1<CR>', opts)
map('n', '<leader>mk', '<cmd>m -2<CR>', opts)

map('n', '<leader>dl', '<cmd>:t.<CR>', opts) -- Duplicate line

-- barbar

-- goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

map('n', '<S-w>', '<Cmd>BufferClose<CR>', opts) -- close buffer
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts) -- move to prev buffer
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts) -- move to next buffer

-- copilot, change accept sequence
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', { expr = true, silent = true})
