return {
    'kevinhwang91/nvim-ufo',
    event = 'BufRead',
    dependencies = {
        { 'kevinhwang91/promise-async' },
    },
    config = function()
        vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
        vim.o.foldcolumn = '1'
        vim.o.foldlevel = 99
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true

        require('ufo').setup()
    end,
    keys = {
        { '<leader>zf', '<cmd>foldclose<cr>', },
        { '<leader>zo', '<cmd>foldopen<cr>', },
    },
}
