return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    branch = 'main',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-context',
    },
    config = function()
        local parsers = {
            'go', 'typescript', 'make', 'bash', 'yaml', 'json', 'lua',
            'tsx', 'css', 'dockerfile', 'html', 'markdown', 'markdown_inline',
        }
        local filetypes = {
            'go', 'typescript', 'make', 'sh', 'yaml', 'json', 'lua',
            'typescriptreact', 'css', 'dockerfile', 'html', 'markdown',
        }

        require('nvim-treesitter').install(parsers)

        vim.api.nvim_create_autocmd('FileType', {
            pattern = filetypes,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}
