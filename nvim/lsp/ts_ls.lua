--@type vim.lsp.Config
return {
    cmd = { "typescript-language-server", "--stdio" },
    root_markers = { ".git", "package.json" },
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
    },
    init_options = {
        hostInfo = "neovim",
        preferences = {
            importModuleSpecifierPreference = "relative",
            includePackageJsonAutoImports = true,
            quotePreference = "single",
            providePrefixAndSuffixTextForRename = true,
        },
    },
}
