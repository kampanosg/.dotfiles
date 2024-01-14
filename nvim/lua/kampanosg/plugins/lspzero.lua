return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        {'neovim/nvim-lspconfig'},
        {
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.api.nvim_command, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'},
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
    }
}
