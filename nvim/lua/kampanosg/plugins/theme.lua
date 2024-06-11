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
