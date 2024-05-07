return {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("fzf-lua").setup({
            winopts = {
                preview = {
                    layout = 'vertical',
                    vertical = 'down:70%',
                },
            },
            files = {
                formatter = "path.filename_first",
            },
        })
    end,
    keys = {
        { '<leader>ff', '<cmd>FzfLua files<cr>' },
        { '<leader>fb', '<cmd>FzfLua buffers<cr>' },
        { '<leader>f;', '<cmd>FzfLua resume<cr>' },
        { '<leader>fa', '<cmd>FzfLua live_grep<cr>' },
        { '<leader>gd', '<cmd>FzfLua lsp_definitions<cr>' },
        { '<leader>gr', '<cmd>FzfLua lsp_references<cr>' },
        { '<leader>gi', '<cmd>FzfLua lsp_implementations<cr>' },
        { '<leader>gs', '<cmd>FzfLua lsp_document_symbols<cr>' },
        { '<leader>ga', '<cmd>FzfLua lsp_code_actions<cr>' },
        { '<leader>gD', '<cmd>FzfLua lsp_workspace_diagnostics<cr>' },
    }
}
