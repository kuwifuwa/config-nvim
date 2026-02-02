return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {},
    init = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<Leader>ff", builtin.find_files)
        vim.keymap.set("n", "<Leader>fg", builtin.live_grep)
        vim.keymap.set("n", "<Leader><Leader>", builtin.buffers)
        vim.keymap.set("n", "<Leader>fh", builtin.help_tags)
        vim.keymap.set("n", "<Leader>fd", builtin.diagnostics)
        vim.keymap.set("n", "<Leader>r", builtin.resume)
    end,
}
