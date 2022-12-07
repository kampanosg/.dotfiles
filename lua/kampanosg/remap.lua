local nnoremap = require("kampanosg.keymap").nnoremap

-- Terminal
nnoremap('<leader>tb', '<cmd>ToggleTerm<CR>')

-- NvimTree
nnoremap("<leader>t1", "<cmd>NvimTreeToggle<CR>")
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

-- Code navigation https://rishabhrd.github.io/jekyll/update/2020/09/19/nvim_lsp_config.html
nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nnoremap('<leader>==', '<cmd>lua vim.lsp.buf.format()<CR>')
nnoremap('gc', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
nnoremap('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')
nnoremap('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')

-- Buffers
nnoremap('<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
nnoremap('<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
nnoremap('<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
nnoremap('<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
nnoremap('<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
nnoremap('<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>')
nnoremap('<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>')
nnoremap('<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>')
nnoremap('<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>')
nnoremap('<leader>$', '<Cmd>BufferLineGoToBuffer -1<CR>')
