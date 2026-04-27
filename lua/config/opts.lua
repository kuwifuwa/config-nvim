vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.laststatus = 3

vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1 -- same as shiftwidth
vim.opt.smarttab = true

vim.opt.wrap = false
vim.opt.linebreak = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- 'foldmethod' and 'foldexpr' use nvim-treesitter when available
vim.opt.foldlevelstart = 99

vim.opt.updatetime = 500

local lsp_opts_augroup = vim.api.nvim_create_augroup("LspOpts", { clear = true })

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
    group = lsp_opts_augroup,
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        -- Enable document highlights
        if client.server_capabilities.documentHighlightProvider
            and not vim.b[args.buf].lsp_document_highlight
        then
            vim.b[args.buf].lsp_document_highlight = true

            vim.api.nvim_create_autocmd("CursorHold", {
                buffer = args.buf,
                callback = vim.lsp.buf.document_highlight,
            })
            vim.api.nvim_create_autocmd("CursorMoved", {
                buffer = args.buf,
                callback = vim.lsp.buf.clear_references,
            })
        end
    end,
})

vim.api.nvim_create_autocmd("LspDetach", {
    group = lsp_opts_augroup,
    callback = function(args)
        -- Remove document highlights when LSP detaches
        vim.lsp.buf.clear_references()
        vim.b[args.buf].lsp_document_highlight = nil
    end,
})

require("config.mappings")
