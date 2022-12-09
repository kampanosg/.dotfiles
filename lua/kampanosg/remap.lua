local Remap = require("kampanosg.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

-- Telescope
nnoremap("<D-p>", ":Telescope<CR>")
nnoremap("<leader>fa", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<leader>fg>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<leader>ff", function()
    require('telescope.builtin').find_files()
end)
nnoremap("<leader>fb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>fh", function()
    require('telescope.builtin').help_tags()
end)
nnoremap("<leader>fd", function()
    require('kampanosg.telescope').search_dotfiles({ hidden = true })
end)
nnoremap("<leader>fgb", function()
    require('kampanosg.telescope').git_branches()
end)
nnoremap("<leader>fgw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end)


-- Refactoring
vnoremap("<leader>rv", function()
    require("refactoring").refactor("Extract Variable")
end);
vnoremap("<leader>rm", function()
    require("refactoring").refactor("Extract Function")
end);
