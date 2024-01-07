require('lazy').setup({

    -- theme
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require 'nordic' .load()
        end
    },

    -- editor
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        },
        keys = {
            { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'telescope: find a file' },
            { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'telescope: find a buffer' },
            { '<leader>f;', '<cmd>Telescope resume<cr>', desc = 'telescope: resume search' },
            { '<leader>fa', '<cmd>Telescope live_grep<cr>', desc = 'telescope: live search' },
            { '<leader>fc', '<cmd>Telescope commands<cr>', desc = 'telescope: show all commands' },
            { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'telescope: show help' },
            { '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', desc = 'show definition' },
            { '<leader>gr', '<cmd>Telescope lsp_references<cr>', desc = 'show references' },
            { '<leader>gY', '<cmd>Telescope lsp_type_definitions<cr>', desc = 'show type definitions' },
            { '<leader>gi', '<cmd>Telescope lsp_implementations<cr>', desc = 'show implementations' },
            { '<leader>gci', '<cmd>Telescope lsp_incoming_calls<cr>', desc = 'show incoming calls' },
            { '<leader>gco', '<cmd>Telescope lsp_outgoing_calls<cr>', desc = 'show outgoing calls' },
            { '<leader>gst', '<cmd>Telescope git_status<cr>', desc = 'show the git status' },
        }
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
            vim.cmd('Gitsigns toggle_current_line_blame')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
    },


    -- coding
    {
        'tpope/vim-commentary'
    },
    {
        'kylechui/nvim-surround',
        version = '*',
        event = 'VeryLazy',
        config = function()
            require('nvim-surround').setup()
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-context',
        },
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = { 'go', 'gomod', 'gosum', 'graphql', 'lua', 'rust', 'javascript', 'typescript', 'vim' },
                auto_install = true,
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    },
    {
        'ray-x/go.nvim',
        dependencies = {
            'ray-x/guihua.lua',
            'neovim/nvim-lspconfig',
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require("go").setup({
                lsp_inlay_hints = {
                    enable = true,
                }
            })
        end,
        event = 'CmdlineEnter',
        ft = {'go', 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    {
        'github/copilot.vim'
    },
    {
        'kevinhwang91/nvim-ufo',
        event = "BufRead",
        dependencies = {
            'kevinhwang91/promise-async',
        },
        keys = {
            { '<leader>zf', '<cmd>foldclose<cr>', desc = 'closes a fold', },
            { '<leader>zo', '<cmd>foldopen<cr>', desc = 'closes a fold', },
        },
        config = function()
            vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
            vim.o.foldcolumn = "1"
            vim.o.foldlevel = 99
            vim.o.foldlevelstart = 99
            vim.o.foldenable = true

            require('ufo').setup()
        end,
    },

    -- lsp
    {
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
            {'simrat39/rust-tools.nvim'},
        }
    },

    -- testing
    {
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
            local neotest_ns = vim.api.nvim_create_namespace("neotest")
            vim.diagnostic.config({
                virtual_text = {
                    format = function(diagnostic)
                        local message =
                            diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                        return message
                    end,
                },
            }, neotest_ns)
            require("neotest").setup({
                library = {
                    plugins = { "neotest" },
                    types = true,
                },
                adapters = {
                    require("neotest-go"),
                    require("neotest-rust"),
                },
            })
        end,
    },
})
