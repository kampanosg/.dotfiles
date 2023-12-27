require('lazy').setup({

    -- theme
    {
        'scottmckendry/cyberdream.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('cyberdream').setup({
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
            })
            vim.cmd('colorscheme cyberdream')
        end,
    },

    -- editor
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('nvim-tree').setup({
                filters = {
                    dotfiles = false
                },
                git = {
                    enable = true,
                    ignore = false,
                    show_on_dirs = true,
                    timeout = 400,
                }
            })
        end,
        keys = {
            { '<leader>t1', '<cmd>NvimTreeToggle<cr>', desc = 'toggle nvim tree' },
            { '<leader>tf', '<cmd>NvimTreeFocus<cr>', desc = 'focus on the nvim tree' },
            { '<leader>tl', '<cmd>NvimTreeFindFile<cr>', desc = 'go to current file in nvim tree' }
        }
    },
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
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("trouble").setup()
        end,
        keys = {
            { '<leader>tt', '<cmd>TroubleToggle<cr>', desc = 'toggle trouble' },
            { '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = 'show workspace diagnostics' },
            { '<leader>td', '<cmd>TroubleToggle document_diagnostics<cr>', desc = 'show document diagnostics' },
            { '<leader>tq', '<cmd>TroubleToggle quickfix<cr>', desc = 'quickfix with trouble' },
        }
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
        'dnlhc/glance.nvim',
        keys = {
            { '<leader>gd', '<cmd>Glance definitions<cr>', desc = 'show definition' },
            { '<leader>gr', '<cmd>Glance references<cr>', desc = 'show references' },
            { '<leader>gY', '<cmd>Glance type_definitions<cr>', desc = 'show type definitions' },
            { '<leader>gi', '<cmd>Glance implementations<cr>', desc = 'show implementations' },
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
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
        'nvim-treesitter/nvim-treesitter-context',
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
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {}
    },
    {
        'github/copilot.vim'
    },
    {
        'kevinhwang91/nvim-ufo',
        event = "BufRead",
        keys = {
            { '<leader>zf', '<cmd>foldclose<cr>', desc = 'closes a fold', },
            { '<leader>zo', '<cmd>foldopen<cr>', desc = 'closes a fold', },
        },
        dependencies = {
            { 'kevinhwang91/promise-async' },
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
