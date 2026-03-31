return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
        preview = {
            condition = function(bufnr)
                local buftype, filetype = vim.bo[bufnr].buftype, vim.bo[bufnr].filetype
                if buftype == "nofile" and filetype == "codecompanion" then
                    return true
                end
            end,
        }
    }
}
