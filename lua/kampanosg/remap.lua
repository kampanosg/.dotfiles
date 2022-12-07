local nnoremap = require("kampanosg.keymap").nnoremap

-- Terminal
nnoremap('<leader>tb', '<cmd>ToggleTerm<CR>')

-- NvimTree
nnoremap("<leader>1", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>tf", "<cmd>NvimTreeFocus<CR>")
nnoremap("<leader>l", "<cmd>NvimTreeFindFile<CR>")

-- FuzzyFinder (fzf)
nnoremap('<leader>ff', '<cmd>Files<CR>')
nnoremap('<leader>fa', '<cmd>Ag<CR>')
nnoremap('<leader>fg', '<cmd>GFiles?<CR>')
nnoremap('<leader>fb', '<cmd>Buffers<CR>')
nnoremap('<leader>fw', '<cmd>Windows<CR>')
nnoremap('<leader>fc', '<cmd>Commands<CR>')

