require('lazy').setup({

    -- theme
    {
        'projekt0n/github-nvim-theme',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"
            vim.cmd('colorscheme github_dark')
        end
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
        'akinsho/bufferline.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require("bufferline").setup{
                options = {
                    mode = 'buffers',
                    numbers = 'ordinal',
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            text_align = "center",
                            separator = false
                        }
                    },
                    diagnostics = "nvim_lsp",
                    diagnostics_indicator = function(_count, _level, diagnostics_dict, _context)
                        local s = " "
                        for e, n in pairs(diagnostics_dict) do
                            local sym = e == "error" and " " or (e == "warning" and " " or "" )
                            s = s .. n .. sym
                        end
                        return s
                    end
                }
            }
        end,
        keys = {
            { '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>' },
            { '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>' },
            { '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>' },
            { '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>' },
            { '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>' },
            { '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>' },
            { '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>' },
            { '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>' },
            { '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>' },
            { '<leader>$', '<cmd>BufferLineGoToBuffer -1<cr>' },
        }
    },
    {
        'yamatsum/nvim-cursorline',
        config = function()
            require('nvim-cursorline').setup {
                cursorline = {
                    enable = true,
                    timeout = 0,
                    number = false,
                }
            }
        end
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
        }
    },
})
