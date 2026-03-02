vim.keymap.set("n", "`", ":w<CR>")
vim.keymap.set("n", "~", ":wa<CR>")
vim.keymap.set({ "n", "i", "v" }, "<C-q>", "<Esc><Esc>:q<CR>")
vim.keymap.set("n", "<Leader>q", ":qa<CR>")

-- Windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- LSP
vim.keymap.set("n", "grf", vim.lsp.buf.format)
vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float)
