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
        { '<leader>ff', '<cmd>lua require("telescope.builtin").find_files({layout_strategy="vertical",path_display = { "truncate" }})<cr>', desc = 'find a file' },
        { '<leader>fb', '<cmd>lua require("telescope.builtin").buffers({layout_strategy="vertical"})<cr>', desc = 'find a buffer' },
        { '<leader>f;', '<cmd>Telescope resume<cr>', desc = 'resume search' },
        { '<leader>fa', '<cmd>lua require("telescope").extensions.live_grep_args.live_grep_args({layout_strategy="vertical"})<cr>', desc = 'livegrep with args' },
        { '<leader>fc', '<cmd>Telescope commands<cr>', desc = 'show all commands' },
        { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'show help' },
        { '<leader>gd', '<cmd>lua require("telescope.builtin").lsp_definitions({layout_strategy="vertical"})<cr>', desc = 'show definition' },
        { '<leader>gr', '<cmd>lua require("telescope.builtin").lsp_references({layout_strategy="vertical"})<cr>', desc = 'show references' },
        { '<leader>gY', '<cmd>lua require("telescope.builtin").lsp_type_definitions({layout_strategy="vertical"})<cr>', desc = 'show type definitions' },
        { '<leader>gi', '<cmd>lua require("telescope.builtin").lsp_implementations({layout_strategy="vertical"})<cr>', desc = 'show implementations' },
        { '<leader>gci', '<cmd>lua require("telescope.builtin").lsp_incoming_calls({layout_strategy="vertical"})<cr>', desc = 'show incoming calls' },
        { '<leader>gco', '<cmd>lua require("telescope.builtin").lsp_outgoing_calls({layout_strategy="vertical"})<cr>', desc = 'show outgoing calls' },
        { '<leader>gs', '<cmd>lua require("telescope.builtin").lsp_dynamic_wokspace_symbols({layout_strategy="vertical"})<cr>', desc = 'show document symbols' },
        { '<leader>gD', '<cmd>lua require("telescope.builtin").diagnostics({layout_strategy="vertical"})<cr>', desc = 'show diagnostics' },
    }
}
