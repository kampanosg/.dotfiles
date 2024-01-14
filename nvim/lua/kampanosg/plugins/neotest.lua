return {
    'nvim-neotest/neotest',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'antoinemadec/FixCursorHold.nvim',

        'nvim-neotest/neotest-go',
        'rouge8/neotest-rust',
    },
    keys = {
        { '<leader>rt', '<cmd>lua require("neotest").run.run()<cr>', desc = 'run the nearest test', },
        { '<leader>rtf', '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', desc = 'run all the tests in the file', },
        { '<leader>t|', '<cmd>Neotest summary<cr>', desc = 'opens the neotest summary window', }
    },
    config = function()
        local neotest_ns = vim.api.nvim_create_namespace('neotest')
        vim.diagnostic.config({
            virtual_text = {
                format = function(diagnostic)
                    local message =
                    diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                    return message
                end,
            },
        }, neotest_ns)
        require('neotest').setup({
            library = {
                plugins = { 'neotest' },
                types = true,
            },
            adapters = {
                require('neotest-go'),
                require('neotest-rust'),
            },
        })
    end,
}
