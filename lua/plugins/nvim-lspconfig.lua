return {
    "neovim/nvim-lspconfig",
    config = function (LazyPlugin, opts)
        vim.lsp.config("basedpyright", {
            settings = {
                basedpyright = {
                    analysis = {
                        diagnosticMode = "workspace",
                    }
                }
            }
        })
        vim.lsp.enable("basedpyright")
        vim.lsp.enable("ruff")

        vim.lsp.enable("ts_ls")
    end,
}
