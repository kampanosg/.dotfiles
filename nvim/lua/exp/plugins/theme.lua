-- return {
-- 'catppuccin/nvim',
-- name = 'catppuccin',
-- priority = 1000,
-- config = function()
--     require('catppuccin').setup({
--         flavour = 'macchiato',
--         transparent_background = false,
--         integrations = {
--             fidget = true,
--             gitsigns = true,
--             ufo = true,
--             treesitter_context = true,
--         },
--     })
--     vim.cmd.colorscheme 'catppuccin'
-- end
-- }

return {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
        require('kanagawa').setup({
            theme = 'dark',
            terminal_colors = true,
        })
        vim.cmd.colorscheme 'kanagawa'
    end
}
