return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<C-e>", api.tree.toggle)
    end,
    opts = {},
}
