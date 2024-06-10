return {
    'echasnovski/mini.completion', 
    version = '*',
    config = function()
        require('mini.completion').setup({
            window = {
                info = { height = 100, width = 80, border = 'rounded' },
                signature = { height = 100, width = 80, border = 'rounded' },
            },
        })

        local keys = {
            ['cr']        = vim.api.nvim_replace_termcodes('<CR>', true, true, true),
            ['ctrl-y']    = vim.api.nvim_replace_termcodes('<C-y>', true, true, true),
            ['ctrl-y_cr'] = vim.api.nvim_replace_termcodes('<C-y><CR>', true, true, true),
        }

        -- select item with <cr>
        _G.cr_action = function()
            if vim.fn.pumvisible() ~= 0 then
                local item_selected = vim.fn.complete_info()['selected'] ~= -1
                return item_selected and keys['ctrl-y'] or keys['ctrl-y_cr']
            else
                return keys['cr']
            end
        end

        vim.keymap.set('i', '<CR>', 'v:lua._G.cr_action()', { expr = true })
        vim.keymap.set('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
        vim.keymap.set('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })
    end,
}
