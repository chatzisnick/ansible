require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.prettierd,
        require("null-ls").builtins.formatting.phpcbf,
        require("null-ls").builtins.diagnostics.markdownlint
    },
})
