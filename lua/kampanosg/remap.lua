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

-- Refactoring
vim.api.nvim_set_keymap('v', '<leader>rr', '[[ <Plug>(coc-rename) ]]', {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('x', '<leader>rr', '[[ <Plug>(coc-rename) ]]', {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('n', '<leader>rr', '[[ <Plug>(coc-rename) ]]', {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('v', '<leader>==', '[[ <Plug>(coc-format-selected) ]]', {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('x', '<leader>==', '[[ <Plug>(coc-format-selected) ]]', {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('n', '<leader>==', '[[ <Plug>(coc-format-selected) ]]', {noremap = true, silent = true, expr = false})

vim.api.nvim_set_keymap("v", "<leader>rm", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})

vim.api.nvim_set_keymap("n", "<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], {noremap = true, silent = true, expr = false})

vim.api.nvim_set_keymap("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})

-- Code navigation and completion
-- Applying codeAction to the selected region.
local opts = {silent = true, nowait = true}
vim.api.nvim_set_keymap("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
vim.api.nvim_set_keymap("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for applying codeAction to the current buffer.
vim.api.nvim_set_keymap("n", "<leader>ac", "<Plug>(coc-codeaction)", opts)

-- Apply AutoFix to problem on the current line.
vim.api.nvim_set_keymap("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Run the Code Lens action on the current line.
vim.api.nvim_set_keymap("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", {silent = true})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true})
