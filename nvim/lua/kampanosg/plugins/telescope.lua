return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
        'nvim-telescope/telescope-live-grep-args.nvim',
    },
    config = function()
        require('telescope').load_extension('live_grep_args')
    end,
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'find a file' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'find a buffer' },
        { '<leader>f;', '<cmd>Telescope resume<cr>', desc = 'resume search' },
        { '<leader>fa', '<cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<cr>', desc = 'livegrep with args' },
        { '<leader>fc', '<cmd>Telescope commands<cr>', desc = 'telescope: show all commands' },
        { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'telescope: show help' },
        { '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', desc = 'show definition' },
        { '<leader>gr', '<cmd>Telescope lsp_references<cr>', desc = 'show references' },
        { '<leader>gY', '<cmd>Telescope lsp_type_definitions<cr>', desc = 'show type definitions' },
        { '<leader>gi', '<cmd>Telescope lsp_implementations<cr>', desc = 'show implementations' },
        { '<leader>gci', '<cmd>Telescope lsp_incoming_calls<cr>', desc = 'show incoming calls' },
        { '<leader>gco', '<cmd>Telescope lsp_outgoing_calls<cr>', desc = 'show outgoing calls' },
        { '<leader>gs', '<cmd>Telescope lsp_dynamic_wokspace_symbols<cr>', desc = 'show document symbols' },
        { '<leader>gD', '<cmd>Telescope diagnostics<cr>', desc = 'show diagnostics' },
    }
}
