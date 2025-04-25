return {
    "hrsh7th/nvim-cmp",
    dependences = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            mapping = {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    -- Confirm with tab, and if no entry is selected, confirm the first item
                    if cmp.visible() then
                        local entry = cmp.get_selected_entry()
                        if not entry then
                            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                        end
                        cmp.confirm()
                    else
                        fallback()
                    end
                end, { "i", "s", "c" }),
            },

            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            },

            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },

            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "buffer" },
            }),
        })
    end,
}
