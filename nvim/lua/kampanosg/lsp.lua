local lsp = require('lspconfig')

local language_servers = {
    'gopls',
    'lua_ls',
    'ts_ls',
}

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- folding
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

-- completion
capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

for _, ls in ipairs(language_servers) do
    lsp[ls].setup({
        capabilities = capabilities
    })
end

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('gk-lsp-attach', { clear = true }),
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client == nil then
            print("client is nil")
            return
        end

        -- highlight same symbols under cursor
        if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                buffer = event.buf,
                callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
                buffer = event.buf,
                callback = vim.lsp.buf.clear_references,
            })
        end

        -- keymaps
        local opts = { noremap = true, silent = true }
        vim.keymap.set('n', '<leader>gR', function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set('n', '<F2>', function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set('n', '<F3>', function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set('n', '<F4>', function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set('n', '<leader>g==', function() vim.lsp.buf.format { async = false } end, opts)

        if vim.lsp.inlay_hint then
            vim.keymap.set('n', '<leader>L',
                function()
                    if vim.lsp.inlay_hint.is_enabled() then
                        vim.lsp.inlay_hint.enable(false, { event.buf })
                    else
                        vim.lsp.inlay_hint.enable(true, { event.buf })
                    end
                end, opts)
        end
    end
})
