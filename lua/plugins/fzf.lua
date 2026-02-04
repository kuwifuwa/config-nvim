return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    init = function()
        local FzfLua = require("fzf-lua")
        vim.keymap.set("n", "<C-\\>", FzfLua.builtin)
        vim.keymap.set("n", "<C-b>", FzfLua.buffers)
        vim.keymap.set("n", "<C-f>", FzfLua.files)
        vim.keymap.set("n", "<C-g>", FzfLua.live_grep)
        vim.keymap.set("n", "<C-s>", FzfLua.diagnostics_workspace)
        vim.keymap.set("n", "<F1>", FzfLua.helptags)
    end
}
