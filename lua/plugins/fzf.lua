return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    init = function()
        local FzfLua = require("fzf-lua")
        vim.keymap.set("n", "<C-\\>", FzfLua.buffers)
        vim.keymap.set("n", "<C-b>", FzfLua.builtin)
        vim.keymap.set("n", "<C-p>", FzfLua.files)
        vim.keymap.set("n", "<C-g>", FzfLua.live_grep)
        vim.keymap.set("n", "<F1>", FzfLua.helptags)
    end
}
