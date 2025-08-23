return {
    'EdenEast/nightfox.nvim',
    config = function()
        vim.cmd([[
            colorscheme carbonfox
            hi Visual guifg=#2c3e50 guibg=#e67e22 gui=none
            highlight StatusLineAccent guifg=#282c34 guibg=#98be65 gui=bold
            highlight StatusLineInsertAccent guifg=#282c34 guibg=#61afef gui=bold
            highlight StatusLineVisualAccent guifg=#282c34 guibg=#c678dd gui=bold
            highlight StatusLineReplaceAccent guifg=#282c34 guibg=#e06c75 gui=bold
            highlight StatusLineCmdLineAccent guifg=#282c34 guibg=#e5c07b gui=bold
            highlight StatusLineTerminalAccent guifg=#282c34 guibg=#56b6c2 gui=bold
            highlight StatusLineGit guifg=#98be65 guibg=#282c34
        ]])
    end,
}
