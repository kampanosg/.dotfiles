local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'gopls',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "<leader>gR", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>ga", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<F2>", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<F3>", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, opts)
end)

lsp.setup()


-- format Go on save
local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.tsx', '*.ts', '*.jsx', '*.js' },
  command = 'silent! EslintFixAll',
  group = vim.api.nvim_create_augroup('MyAutocmdsJavaScripFormatting', {}),
})
