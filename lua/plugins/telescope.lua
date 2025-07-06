return {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {},
    config = function (LazyPlugin, opts)
        require("telescope").setup(opts)

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<Leader>ff", builtin.find_files)
        vim.keymap.set("n", "<Leader>fg", builtin.live_grep)
        vim.keymap.set("n", "<Leader>fb", builtin.buffers)
        vim.keymap.set("n", "<Leader>fh", builtin.help_tags)
        vim.keymap.set("n", "<Leader>fd", builtin.diagnostics)
        vim.keymap.set("n", "<Leader>r", builtin.resume)
    end,
}
