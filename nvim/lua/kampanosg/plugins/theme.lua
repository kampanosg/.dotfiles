return {
    'EdenEast/nightfox.nvim',
    config = function()
        vim.cmd("colorscheme carbonfox")
        vim.cmd('hi Visual guifg=#2c3e50 guibg=#e67e22 gui=none')
    end,
}
