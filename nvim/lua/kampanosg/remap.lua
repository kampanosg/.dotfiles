local Remap = require("kampanosg.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap

vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-c>', '+y<C-R>', { noremap = true, silent = true})

-- -- Telescope
nnoremap("<leader>fp", ":Telescope<CR>")
nnoremap("<leader>fa", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("🔎 ") })
end)
nnoremap("<leader>fg", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<leader>ff", function()
    require('telescope.builtin').find_files()
end)
nnoremap("<leader>fb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>fh", function()
    require('kampanosg.telescope').search_dotfiles({ hidden = true })
end)
nnoremap("<leader>fgb", function()
    require('kampanosg.telescope').git_branches()
end)
nnoremap("<leader>f;", function()
    require('telescope.builtin').resume()
end)


-- Move a line of code up or down
nnoremap("<leader>mj", "<cmd>m +1<CR>")
nnoremap("<leader>mk", "<cmd>m -2<CR>")
vnoremap("<leader>mj", "<cmd>m +1<CR>")
vnoremap("<leader>mk", "<cmd>m -2<CR>")


-- UndoTree
nnoremap("<leader>U", "<cmd>UndotreeToggle<CR>")


-- NvimTree
nnoremap("<leader>t1", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>tf", "<cmd>NvimTreeFocus<CR>")
nnoremap("<leader>tl", "<cmd>NvimTreeFindFile<CR>")


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


-- Harpoon
nnoremap('<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<CR>')
nnoremap('<leader>hh', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
nnoremap('<leader>hn', '<cmd>lua require("harpoon.ui").nav_next()<CR>')
nnoremap('<leader>hb', '<cmd>lua require("harpoon.ui").nav_prev()<CR>')


-- Aerial
nnoremap('<leader>|', '<cmd>AerialToggle<CR>')
nnoremap('<leader>}', '<cmd>AerialNext<CR>')
nnoremap('<leader>{', '<cmd>AerialPrev<CR>')


-- Terminal
-- nnoremap('<leader>tt', '<cmd>ToggleTerm<CR>')
-- inoremap('<leader>tt', '<Esc><cmd>ToggleTerm<CR>')


-- Code navigation can be found in `lsp.lua`


-- Others
nnoremap('<leader>dl', '<cmd>:t.<CR>')
-- nnoremap('<leader>tspd', '<cmd>TransparentDisable<CR>')
-- nnoremap('<leader>tspe', '<cmd>TransparentEnable<CR>')


-- Trouble
nnoremap("<leader>xx", "<cmd>TroubleToggle<CR>", { silent = true, noremap = true })
nnoremap("<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
nnoremap("<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
nnoremap("<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
nnoremap("<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
nnoremap("xR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
