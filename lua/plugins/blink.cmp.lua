return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
        keymap = { preset = "super-tab" },
        completion = {
            accept = { auto_brackets = { enabled = false } },
            documentation = { auto_show = true, auto_show_delay_ms = 0 },
        },
        sources = {
            default = {
                "lsp", "path", "snippets", "buffer",
                "avante_commands", "avante_mentions", "avante_shortcuts", "avante_files"
            },
            providers = {
                avante_commands = {
                    name = "avante_commands",
                    module = "blink.compat.source",
                    score_offset = 90, -- show at a higher priority than lsp
                    opts = {},
                },
                avante_files = {
                    name = "avante_files",
                    module = "blink.compat.source",
                    score_offset = 100, -- show at a higher priority than lsp
                    opts = {},
                },
                avante_mentions = {
                    name = "avante_mentions",
                    module = "blink.compat.source",
                    score_offset = 1000, -- show at a higher priority than lsp
                    opts = {},
                },
                avante_shortcuts = {
                    name = "avante_shortcuts",
                    module = "blink.compat.source",
                    score_offset = 1000, -- show at a higher priority than lsp
                    opts = {},
                }
            }
        },
        signature = { enabled = true },
    },
}
