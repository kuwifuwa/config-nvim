return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    config = function (LazyPlugin, opts)
        require("nvim-tree").setup(opts)

        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<Leader>f", api.tree.toggle)
    end,
    lazy = false,
}
