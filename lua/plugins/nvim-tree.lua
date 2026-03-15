return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<C-e>", api.tree.toggle)
    end,
    opts = {
        on_attach = function(buffer)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = buffer, noremap = true, silent = true, nowait = true }
            end

            api.map.on_attach.default(buffer)
            vim.keymap.del("n", "s", opts("Run System"))
        end
    },
}
