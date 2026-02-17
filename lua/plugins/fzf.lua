return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        local fzf = require("fzf-lua")

        vim.keymap.set("n", "sb", fzf.builtin)
        vim.keymap.set("n", "<F1>", fzf.helptags)
        vim.keymap.set("n", "<F2>", fzf.keymaps)

        vim.keymap.set("n", "s<Leader>", fzf.buffers)
        vim.keymap.set("n", "sf", fzf.files)
        vim.keymap.set("n", "sg", fzf.live_grep)

        vim.keymap.set("n", "sd", fzf.diagnostics_workspace)
        vim.keymap.set("n", "grr", fzf.lsp_references)
        vim.keymap.set("n", "ss", fzf.lsp_live_workspace_symbols)

        vim.keymap.set("n", "S", fzf.resume)
    end,
    opts = {},
}
