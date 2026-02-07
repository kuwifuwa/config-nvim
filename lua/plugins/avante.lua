return {
    "yetone/avante.nvim",
    build = vim.fn.has("win32") ~= 0
        and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
        or "make",
    event = "VeryLazy",
    opts = {
        provider = "copilot",
        selection = { hint_display = "none" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "saghen/blink.compat",
        "ibhagwan/fzf-lua",
        "folke/snacks.nvim",
        "nvim-tree/nvim-web-devicons",
        "OXY2DEV/markview.nvim",
        "zbirenbaum/copilot.lua",
    }
}
