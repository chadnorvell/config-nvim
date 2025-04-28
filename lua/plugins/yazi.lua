return {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "folke/snacks.nvim",
    },
    keys = {
        {
            "<leader>fr",
            mode = { "n", "v" },
            "<cmd>Yazi<cr>",
            desc = "browse",
        },
        {
            "<leader>fd",
            "<cmd>Yazi cwd<cr>",
            desc = "browse cwd",
        },
        {
            "<c-tab>",
            "<cmd>Yazi toggle<cr>",
            desc = "re-browse",
        },
    },
    opts = {
        open_for_directories = false,
        keymaps = {
            show_help = "<f1>",
        },
    },
}
