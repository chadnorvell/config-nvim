return {
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>gs", "<cmd>Git<cr>", desc = "git status" },
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
        },
    },
}
