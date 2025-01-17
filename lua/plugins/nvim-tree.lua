return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    config = function (LazyPlugin, opts)
        require("nvim-tree").setup({})

        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<F2>", api.tree.toggle)
    end,
}
