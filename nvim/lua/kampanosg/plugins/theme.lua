return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            flavour = 'macchiato',
            transparent_background = true,
            integrations = {
                dap = true,
                dap_ui = true,
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

        local sign = vim.fn.sign_define
        sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
        sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
        sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})
    end
}
