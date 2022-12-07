local nnoremap = require("kampanosg.keymap").nnoremap

-- Terminal
nnoremap('<leader>tb', '<cmd>ToggleTerm<CR>')

-- NvimTree
nnoremap("<leader>1", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>tf", "<cmd>NvimTreeFocus<CR>")
nnoremap("<leader>l", "<cmd>NvimTreeFindFile<CR>")

-- Telescope
--nnoremap('<leader>ff', '<cmd>Telescope find_files hidden=true prompt_prefix=🔍 eiles=true<CR>')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
