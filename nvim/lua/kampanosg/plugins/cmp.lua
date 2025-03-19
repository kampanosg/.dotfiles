return {
    'saghen/blink.cmp',
    version = '*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = 'default',
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
            ['<CR>'] = { 'select_and_accept', 'fallback' },
        },
    }
}
