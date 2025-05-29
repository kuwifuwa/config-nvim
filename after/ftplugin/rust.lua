local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set("n", "gra", function () vim.cmd.RustLsp("codeAction") end, { buffer = bufnr })
vim.keymap.set("n", "<Leader>sd", function () vim.cmd.RustLsp("renderDiagnostic") end, { buffer = bufnr })
vim.keymap.set("n", "<Leader>sr", function () vim.cmd.RustLsp("relatedDiagnostics") end, { buffer = bufnr })
