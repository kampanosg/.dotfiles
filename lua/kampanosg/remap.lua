local nnoremap = require("kampanosg.keymap").nnoremap

-- Terminal
nnoremap('<leader>tb', '<cmd>ToggleTerm<CR>')

-- NvimTree
nnoremap("<leader>1", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>tf", "<cmd>NvimTreeFocus<CR>")
nnoremap("<leader>l", "<cmd>NvimTreeFindFile<CR>")

-- FuzzyFinder (fzf)
nnoremap('<leader>ff', '<cmd>Files<CR>')
nnoremap('<leader>fa', '<cmd>Rg<CR>')
nnoremap('<leader>fg', '<cmd>GFiles?<CR>')
nnoremap('<leader>fb', '<cmd>Buffers<CR>')
nnoremap('<leader>fw', '<cmd>Windows<CR>')
nnoremap('<leader>fc', '<cmd>Commands<CR>')

-- Trouble
nnoremap('<leader>xx', '<cmd>TroubleToggle<CR>')
nnoremap('<leader>xt', '<cmd>TodoTrouble<CR>')

-- Code navigation
nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nnoremap('<leader>==', '<cmd>lua vim.lsp.buf.format()<CR>')
nnoremap('gc', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
nnoremap('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')

