return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
        vim.cmd('hi Visual guifg=#2c3e50 guibg=#e67e22 gui=none')
    end
}
