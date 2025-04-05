--@type vim.lsp.Config
return {
    cmd = { "gopls" },
    root_markers = { ".git", "go.mod" },
    filetypes = { "go", "gomod" },
}
