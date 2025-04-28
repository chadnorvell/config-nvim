return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
        "echasnovski/mini.nvim",
    },
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = false },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = { enabled = true },
        picker = { enabled = true },
        quickfile = { enabled = false },
        scope = { enabled = true },
        scroll = { enabled = false },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
    keys = {
        -- bufdelete
        {
            "<leader>bd",
            function()
                require("snacks").bufdelete.delete()
            end,
            desc = "kill",
        },
        {
            "<leader>bD",
            function()
                require("snacks").bufdelete.other()
            end,
            desc = "kill others",
        },
        -- explorer
        {
            "<leader>ft",
            function()
                require("snacks").explorer()
            end,
            desc = "tree",
        },
    },
}
