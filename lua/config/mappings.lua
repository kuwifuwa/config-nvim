-- Move between windows.
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Frequently used commands.
vim.keymap.set("n", "`", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":qa<CR>")
vim.keymap.set({ "n", "i", "v" }, "<C-q>", "<Esc><Esc>:close<CR>")

-- *s*wap for nvim-treesitter-textobjects, otherwise unused.
vim.keymap.set("n", "s", "<NOP>")
vim.keymap.set("n", "S", "<NOP>")

-- LSP mappings.
vim.keymap.set("n", "grf", vim.lsp.buf.format)
vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float)
