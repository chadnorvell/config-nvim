return {
    "stevearc/conform.nvim",
    opts = {
        format_on_save = { timeout_ms = 500 },
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "ruff" },
            rust = { "rustfmt" },

            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            json = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
        },
    },
    keys = {
        {
            "<leader>bf",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "",
            desc = "format",
        },
    },
}
