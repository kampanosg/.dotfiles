return {
    'folke/trouble.nvim',
    opts = {
        height = 15,
        icons = false,
        mode = "workspace_diagnostics",
        fold_open = "",
        fold_closed = "",
        indent_lines = false,
        signs = {
            error = "error",
            warning = "warn",
            hint = "hint",
            information = "info"
        },
    },
    keys = {
        { '<leader>gD', '<cmd>TroubleToggle<cr>', desc = 'toggle trouble' },
    },
}
