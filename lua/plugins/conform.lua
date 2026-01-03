return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },

            javascript = { "biome-check" },
            typescript = { "biome-check" },
            json = { "biome-check" },
            jsonc = { "biome-check" },
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
        format_on_save = {
            timeout_ms = 500,
        },
    },
}
