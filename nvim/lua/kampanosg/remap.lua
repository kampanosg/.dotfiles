local Remap = require("kampanosg.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

-- Move a line of code up or down
nnoremap("<leader>mj", "<cmd>m +1<CR>")
nnoremap("<leader>mk", "<cmd>m -2<CR>")
vnoremap("<leader>mj", "<cmd>m +1<CR>")
vnoremap("<leader>mk", "<cmd>m -2<CR>")

nnoremap('<leader>dl', '<cmd>:t.<CR>') -- Duplicate line
