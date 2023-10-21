require('lazy').setup({

    -- theme
    {
        "bluz71/vim-nightfly-guicolors",
        lazy = false,
        priority = 1000, 
        config = function()
            vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"
            vim.cmd([[colorscheme nightfly]])
        end,
    },    

    -- editor
    {
        'folke/noice.nvim',
        event = 'VeryLazy',
        opts = {},
        dependencies = {
            'MunifTanjim/nui.nvim',
        }
    },
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
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'telescope: find a file' },
            { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'telescope: find a buffer' },
            { '<leader>f;', '<cmd>Telescope resume<cr>', desc = 'telescope: resume search' },
            { '<leader>fa', function()
                require('telescope.builtin').grep_string({ search = vim.fn.input("🔎 ") })
            end, desc = 'telescope: global search' }
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
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            sidebar_filetypes = {
                NvimTree = true,
            },
            icons = {
                diagnostics = {
                    [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
                    [vim.diagnostic.severity.WARN] = {enabled = false},
                    [vim.diagnostic.severity.INFO] = {enabled = false},
                    [vim.diagnostic.severity.HINT] = {enabled = true},
                }
            },
        },
        version = '^1.0.0',
    },
    {
        'yamatsum/nvim-cursorline',
        config = function ()
            require('nvim-cursorline').setup {
                cursorline = {
                    enable = true,
                    timeout = 0,
                    number = false,
                }
            }
        end
    },
    {
        'gelguy/wilder.nvim',
        config = function()
            local wilder = require('wilder')
            wilder.setup({modes = {':', '/', '?'}})
            wilder.set_option('use_python_remote_plugin', 0)
            wilder.set_option('pipeline', {
                wilder.branch(
                    wilder.cmdline_pipeline(),
                    wilder.search_pipeline()
                ),
            })
            wilder.set_option('renderer', wilder.popupmenu_renderer({
                highlighter = wilder.basic_highlighter(),
            }))
        end,
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
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup({
                lsp_inlay_hints = {
                    enable = true,
                }
            })
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
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
})
