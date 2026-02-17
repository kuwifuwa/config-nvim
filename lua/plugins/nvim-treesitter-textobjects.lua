return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    init = function()
        -- Disable entire built-in ftplugin mappings to avoid conflicts.
        vim.g.no_plugin_maps = true

        for lhs, textobject in pairs({
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@call.outer",
            ["ic"] = "@call.inner",
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            ["ak"] = "@class.outer",
            ["ik"] = "@class.inner",
        }) do
            vim.keymap.set({ "x", "o" }, lhs, function()
                require("nvim-treesitter-textobjects.select").select_textobject(textobject, "textobjects")
            end)
        end

        for symbol, textobject in pairs({
            ["f"] = "@function.outer",
            ["k"] = "@class.outer",
            ["a"] = "@parameter.inner",
        }) do
            vim.keymap.set("n", "<Leader>s" .. symbol, function()
                require("nvim-treesitter-textobjects.swap").swap_next(textobject)
            end)
            vim.keymap.set("n", "<Leader>S" .. symbol, function()
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
