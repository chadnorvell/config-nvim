return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "all problems",
        },
        {
            "<leader>xb",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "buffer problems",
        },
    },
}
