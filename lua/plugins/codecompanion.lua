return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "OXY2DEV/markview.nvim",
    },
    init = function()
        vim.keymap.set({ "n", "v" }, "<Leader>e", ":CodeCompanion<CR>")
        vim.keymap.set({ "n", "v" }, "<Leader>c", ":CodeCompanionChat<CR>")
    end,
    opts = {
        interactions = {
            chat = { adapter = { name = "copilot", model = "gpt-4o" } },
            inline = { adapter = { name = "copilot", model = "gpt-4o" } },
            cmd = { adapter = { name = "copilot", model = "gpt-4o" } },
            background = { adapter = { name = "copilot", model = "gpt-4o" } }
        },
    },
}
