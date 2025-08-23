return {
    'EdenEast/nightfox.nvim',
    config = function()
        vim.cmd([[
            colorscheme duskfox
            hi Visual guifg=#2c3e50 guibg=#e67e22 gui=none

            hi StatusLine guifg=#abb2bf guibg=#282c34

            highlight StatusLineAccent guifg=#282c34 guibg=#98be65 gui=bold
            highlight StatusLineInsertAccent guifg=#282c34 guibg=#61afef gui=bold
            highlight StatusLineVisualAccent guifg=#282c34 guibg=#c678dd gui=bold
            highlight StatusLineReplaceAccent guifg=#282c34 guibg=#e06c75 gui=bold
            highlight StatusLineCmdLineAccent guifg=#282c34 guibg=#e5c07b gui=bold
            highlight StatusLineTerminalAccent guifg=#282c34 guibg=#56b6c2 gui=bold

            highlight StatusLineGit guifg=#98be65 guibg=#282c34

            highlight StatusLineLspError guifg=#e06c75 guibg=#282c34 gui=none
            highlight StatusLineLspWarning guifg=#e5c07b guibg=#282c34 gui=none
            highlight StatusLineLspInfo guifg=#61afef guibg=#282c34 gui=none
            highlight StatusLineLspHint guifg=#98be65 guibg=#282c34 gui=none
        ]])
    end
}
