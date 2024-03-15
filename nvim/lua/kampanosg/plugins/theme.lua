return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            flavour = 'mocha',
            transparent_background = true,
            integrations = {
                fidget = true,
                gitsigns = true,
                mason = true,
                neotest = true,
                cmp = true,
                ufo = true,
                telescope = {
                    enabled = true,
                },
                indent_blankline = {
                    enabled = true,
                    scope_color = 'peach',
                    colored_indent_levels = false,
                },
                treesitter_context = true,
                lsp_trouble = true,
                illuminate = {
                    enabled = true,
                    lsp = false
                },
            },
        })
        vim.cmd.colorscheme 'catppuccin'
    end
}
