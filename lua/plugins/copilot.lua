return {
    'zbirenbaum/copilot.lua',
    cmd = "Copilot",
    event = 'InsertEnter',
    opts = {
        panel = { enabled = false },
        suggestion = {
            hide_during_completion = false,
            keymap = {
                accept = "<C-c>",
                accept_word = "<C-w>",
                accept_line = "<C-e>",
                next = "<C-j>",
                prev = "<C-k>",
            },
        },
    },
}
