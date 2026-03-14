return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    opts = {
        keymap = { preset = "super-tab" },
        completion = {
            accept = { auto_brackets = { enabled = false } },
            documentation = { auto_show = true, auto_show_delay_ms = 0 },
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer", },
        },
        signature = { enabled = true },
    },
}
