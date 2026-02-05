return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
        keymap = { preset = "super-tab" },
        completion = {
            accept = { auto_brackets = { enabled = false } },
            ghost_text = { enabled = true },
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        signature = { enabled = true },
    },
}
