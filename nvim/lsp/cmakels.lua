--@type vim.lsp.Config
return {
    cmd = { "cmake-language-server" },
    root_markers = { ".git", "CMakeLists.txt" },
    filetypes = { "cmake" },
    settings = {
        cmake = {
            configureOnOpen = true,
            configureOnEdit = true,
        },
    },
}
