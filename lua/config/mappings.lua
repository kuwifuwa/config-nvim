-- Window movement
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Language server
vim.keymap.set("n", "grn", vim.lsp.buf.rename)
vim.keymap.set("n", "gra", vim.lsp.buf.code_action)
vim.keymap.set("n", "grr", vim.lsp.buf.references)
vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help)

-- Diagnostics
vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float)

-- Plugin management
vim.keymap.set("n", "<Leader><Leader>u", ":Lazy update<CR>")
