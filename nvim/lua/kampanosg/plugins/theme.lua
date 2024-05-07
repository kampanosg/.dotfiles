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
                treesitter_context = true,
            },
        })
        vim.cmd.colorscheme 'catppuccin'
    end
}
