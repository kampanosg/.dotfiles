--@type vim.lsp.Config
return {
    cmd = { "bash-language-server", "start" },
    root_markers = { 
        ".git", 
        ".bashrc", 
        ".bash_profile", 
        ".bash_login", 
        ".profile",
    },
    filetypes = { "sh", "bash" },
    settings = {
        bashIde = {
            shellcheck = {
                enable = true,
            },
            shfmt = {
                enable = true,
            },
        },
    },
}
