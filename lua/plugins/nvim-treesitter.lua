return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufNewFile", "BufReadPost" },
    opts = {
        ensure_installed = {
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
        },
        sync_install = false,
        highlight = {
            enable = true,
            disable = {
                "rust",
                "python",
                "typescript",
            },
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-s>",
                node_incremental = "<C-s>",
                scope_incremental = "<C-c>",
                node_decremental = "<BS>",
            }
        },
        indent = {
            enable = true,
        },
    },
    config = function(LazyPlugin, opts)
        require("nvim-treesitter.configs").setup(opts)

        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    end,
}
