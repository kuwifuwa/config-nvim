return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("ty", {
            settings = {
                ty = {
                    diagnosticMode = "workspace",
                },
            },
        })
        vim.lsp.enable("ty")
        vim.lsp.enable("ruff")

        vim.lsp.enable("ts_ls")
        vim.lsp.enable('biome')

        vim.lsp.enable("autohotkey_lsp")
        vim.lsp.enable("lua_ls")
    end,
}
