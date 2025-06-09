return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp", opts = {} },
            { "folke/which-key.nvim", opts = {} },
            { "j-hui/fidget.nvim", opts = {} },
        },
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),

                callback = function(event)
                    local wk = require("which-key")

                    wk.add({
                        {
                            "<leader>ca",
                            vim.lsp.buf.code_action,
                            desc = "action",
                            mode = { "n", "x" },
                        },

                        { "<leader>ch", vim.lsp.buf.hover, desc = "hover" },
                        { "<leader>cl", vim.lsp.buf.declaration, desc = "declaration" },
                        { "<leader>cr", vim.lsp.buf.rename, desc = "rename" },

                        {
                            "<leader>cd",
                            require("telescope.builtin").lsp_definitions,
                            desc = "code defs",
                        },
                        {
                            "<leader>cf",
                            require("telescope.builtin").lsp_references,
                            desc = "refs",
                        },
                        {
                            "<leader>ci",
                            require("telescope.builtin").lsp_implementations,
                            desc = "impls",
                        },

                        {
                            "<leader>cp",
                            require("telescope.builtin").lsp_dynamic_workspace_symbols,
                            desc = "symbols in project",
                        },

                        {
                            "<leader>cs",
                            require("telescope.builtin").lsp_document_symbols,
                            desc = "symbols in doc",
                        },

                        {
                            "<leader>ct",
                            require("telescope.builtin").lsp_type_definitions,
                            desc = "type defs",
                        },
                    })
                end,
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local servers = {
                clangd = {},
                eslint = {
                    on_attach = function(client, bufnr)
                        local wk = require("which-key")

                        wk.add({
                            {
                                "<leader>bx",
                                "EslintFixAll<CR>",
                                buffer = bufnr,
                                desc = "quick fix",
                            },
                        })
                    end,
                },
                lua_ls = {},
                rust_analyzer = {},
                tailwindcss = {
                    classFunctions = {
                        "clsx",
                        "cn",
                        "cva",
                        "tv",
                        "tw",
                        "twMerge",
                    },
                },
                ts_ls = {},
            }

            for server_name, server_settings in pairs(servers) do
                server_settings.capabilities = vim.tbl_deep_extend(
                    "force",
                    {},
                    capabilities,
                    server_settings.capabilities or {}
                )

                require("lspconfig")[server_name].setup(server_settings)
            end
        end,
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "InsertEnter",
        opts = {
            bind = true,
            toggle_key = "<D-t>",
        },
    },
}
