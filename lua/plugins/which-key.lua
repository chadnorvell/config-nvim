return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            { "<leader>b", group = "buffers" },
            { "<leader>c", group = "code" },
            { "<leader>f", group = "files" },
            { "<leader>g", group = "git" },
            { "<leader>s", group = "search" },
            { "<leader>u", group = "ui" },
            { "<leader>uc", group = "color scheme" },
            { "<leader>x", group = "diagnostics" },
            { "<leader>fs", vim.cmd.w, desc = "save" },
            { "<leader>fw", vim.cmd.Ex, desc = "netrw" },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "which key",
        },
        {
            "<leader>w",
            function()
                require("which-key").show({ keys = "<c-w>", loop = true })
            end,
            desc = "windows",
        },
    },
}
