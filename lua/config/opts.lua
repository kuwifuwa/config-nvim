-- Disable Netrw: interferes with nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1 -- same as shiftwidth
vim.opt.smarttab = true

vim.opt.linebreak = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- 'foldmethod' and 'foldexpr' use nvim-treesitter when available
vim.opt.foldlevelstart = 99

vim.opt.updatetime = 250
