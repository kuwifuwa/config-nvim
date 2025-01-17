local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set("n", "gra", function () vim.cmd.RustLsp("codeAction") end, { buffer = bufnr })
