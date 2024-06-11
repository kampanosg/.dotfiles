return {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    enabled = true,
    config = function()
        require('copilot').setup({
            panel = {
                enabled = false,
            },
            suggestion = {
                enabled = true,
                auto_trigger = true,
                keymap = {
                    accept = false
                },
            },
        })

        vim.keymap.set('i', '<C-j>', function()
            if require('copilot.suggestion').is_visible() then
                require('copilot.suggestion').accept()
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
            end
        end)
    end,
}
