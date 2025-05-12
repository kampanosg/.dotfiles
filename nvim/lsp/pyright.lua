--@type vim.lsp.Config
return {
    cmd = { "pyright-langserver", "--stdio" },
    root_markers = { 
        ".git", 
        "setup.py", 
        "setup.cfg", 
        "pyproject.toml", 
        "requirements.txt",
    },
    filetypes = { 'python' },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic",
                autoImportCompletions = true,
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
            },
        },
    },
}
