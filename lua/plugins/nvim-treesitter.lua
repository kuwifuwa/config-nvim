return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    init = function()
        require("nvim-treesitter").install {
            "c",
            "cpp",
            "rust",
            "python",
            "lua",
            "javascript",
            "typescript",
            "html",
            "css",
            "toml",
            "json",
            "yaml",
            "gitignore",
            "markdown",
            "markdown_inline",
        }
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "toml", "json", "yaml", "gitignore", "markdown", "markdown_inline" },
            callback = function() vim.treesitter.start() end,
        })
    end,
    opts = {},
}
