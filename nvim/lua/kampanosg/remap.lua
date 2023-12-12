local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move a line of code up or down
map('n', '<leader>mj', '<cmd>m +1<CR>', opts)
map('n', '<leader>mk', '<cmd>m -2<CR>', opts)

-- Duplicate line
map('n', '<leader>dl', '<cmd>:t.<CR>', opts)

-- copilot, change accept sequence
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', { expr = true, silent = true})

-- keep the paste register
map('x', '<leader>p', '"_dp', opts)
