return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-context',
    },
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {
                'go',
                'gomod',
                'gosum',
                'graphql',
                'lua',
                'rust',
                'javascript',
                'typescript',
                'vim'
            },
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
