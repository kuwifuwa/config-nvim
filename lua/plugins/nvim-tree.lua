return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    init = function (LazyPlugin)
        -- Disable Netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    opts = {},
    config = function (LazyPlugin, opts)
        require("nvim-tree").setup(opts)

        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<Leader>f", api.tree.toggle)
    end,
    lazy = false,
}
