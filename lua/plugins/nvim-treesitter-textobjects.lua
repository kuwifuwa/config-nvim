return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    event = "VeryLazy",
    opts = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["am"] = "@function.outer",
                ["im"] = "@function.inner",
                ["af"] = "@call.outer",
                ["if"] = "@call.inner",
                ["aa"] = "@parameter.outer",
                ["ia"] = "@parameter.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
            include_surrounding_whitespace = true,
        },
        swap = {
            enable = true,
            swap_next = {
                ["sm"] = "@function.outer",
                ["sc"] = "@class.outer",
                ["sa"] = "@parameter.inner",
            },
            swap_previous = {
                ["Sm"] = "@function.outer",
                ["Sc"] = "@class.outer",
                ["Sa"] = "@parameter.inner",
            },
        },
    },
    config = function(LazyPlugin, opts)
        require("nvim-treesitter.configs").setup({ textobjects = opts })
    end,
}
