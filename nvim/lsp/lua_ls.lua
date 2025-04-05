--@type vim.lsp.Config
return {
    cmd = { "lua-language-server" },
    root_markers = { ".git", "lua" },
    filetypes = {
        ".luarc.json",
        ".luarc.jsonc",
        ".luacheckrc",
        ".stylua.toml",
        "stylua.toml",
        "selene.toml",
        "selene.yml",
        ".git",
    },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                maxPreload = 1000,
                preloadFileSize = 1000,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
