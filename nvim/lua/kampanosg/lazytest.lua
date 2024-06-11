local opts     = { noremap = true, silent = true }
local Terminal = require('toggleterm.terminal').Terminal

local lazytest = Terminal:new({
    cmd = 'lazytest',
    dir = '.',
    direction = 'float',
    float_opts = {
        border = 'rounded',
    },
    -- function to run on opening the terminal
    on_open = function(term)
        vim.cmd('startinsert!')
        vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', opts)
    end,
    -- function to run on closing the terminal
    on_close = function(_)
        vim.cmd('startinsert!')
    end,
})

function _lazytest_toggle()
    lazytest:toggle()
end

vim.api.nvim_set_keymap('n', '<C-t>', '<cmd>lua _lazytest_toggle()<CR>', opts)
