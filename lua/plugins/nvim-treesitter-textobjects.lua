return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    init = function()
        -- Disable entire built-in ftplugin mappings to avoid conflicts.
        vim.g.no_plugin_maps = true

        for lhs, textobject in pairs({
            ["am"] = "@function.outer",
            ["im"] = "@function.inner",
            ["af"] = "@call.outer",
            ["if"] = "@call.inner",
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
        }) do
            vim.keymap.set({ "x", "o" }, lhs, function()
                require("nvim-treesitter-textobjects.select").select_textobject(textobject, "textobjects")
            end)
        end

        for symbol, textobject in pairs({
            ["m"] = "@function.outer",
            ["c"] = "@class.outer",
            ["a"] = "@parameter.inner",
        }) do
            vim.keymap.set("n", "s" .. symbol, function()
                require("nvim-treesitter-textobjects.swap").swap_next(textobject)
            end)
            vim.keymap.set("n", "S" .. symbol, function()
                require("nvim-treesitter-textobjects.swap").swap_previous(textobject)
            end)
        end
    end,
    opts = {
        select = {
            lookahead = true,
        },
    },
}
