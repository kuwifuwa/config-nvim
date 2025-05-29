-- Move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- *s*wap for nvim-treesitter-textobjects, otherwise unused
vim.keymap.set("n", "s", "<NOP>")
vim.keymap.set("n", "S", "<NOP>")

-- Language Server Protocol
vim.keymap.set("n", "grf", vim.lsp.buf.format)
vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float)

-- Lazy
vim.keymap.set("n", "<Leader><Leader>", ":Lazy<CR>")
