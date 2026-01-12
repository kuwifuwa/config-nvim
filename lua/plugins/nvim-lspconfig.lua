return {
    "neovim/nvim-lspconfig",
    config = function(LazyPlugin, opts)
        -- vim.lsp.config("basedpyright", {
        --     settings = {
        --         basedpyright = {
        --             analysis = {
        --                 diagnosticMode = "workspace",
        --             },
        --             typeCheckingMode = "basic",
        --         },
        --     },
        -- })
        -- vim.lsp.enable("basedpyright")
        vim.lsp.config("ty", {
            settings = {
                ty = {
                    diagnosticMode = "workspace",
                    experimental = {
                        rename = true,
                    },
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
