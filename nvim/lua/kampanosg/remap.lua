local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move a line of code up or down
map('n', '<leader>mj', '<cmd>m +1<CR>', opts)
map('n', '<leader>mk', '<cmd>m -2<CR>', opts)
map('n', '<leader>mj', '<cmd>m +1<CR>', opts)
map('n', '<leader>mk', '<cmd>m -2<CR>', opts)

map('n', '<leader>dl', '<cmd>:t.<CR>', opts) -- Duplicate line


-- barbar

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
