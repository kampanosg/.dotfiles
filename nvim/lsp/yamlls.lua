return {
    cmd = { "yaml-language-server", "--stdio" },
    filetypes = { "yaml", "yml" },
    root_markers = { ".git" },
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/api/tsconfig.schema.json"] = "tsconfig.json",
                ["https://raw.githubusercontent.com/SchemaStore/schemastore/master/src/api/package.schema.json"] = "package.json",
            },
        },
    },
}
