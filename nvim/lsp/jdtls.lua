--@type vim.lsp.Config
return {
    cmd = { "jdtls" },
    root_markers = { ".git", "pom.xml", "build.gradle", "gradlew", "mvnw", ".project" },
    filetypes = { "java" },
}
