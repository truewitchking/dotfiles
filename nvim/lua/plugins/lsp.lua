return {
    {
        "j-hui/fidget.nvim",
        lazy = false,
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "stylua",

                "clangd",
                "rust_analyzer",

                "ts_ls",
                "eslint",
                "tailwindcss",

                "gopls",

                "fish_lsp",
                "bashls",
            },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {},
                keys = {
                    { "<leader>pm", "<CMD>Mason<CR>" },
                },
            },
            {
                "neovim/nvim-lspconfig",
                config = function()
                    vim.diagnostic.config {
                        virtual_text = {
                            source = true,
                        },
                        float = {
                            source = true,
                        },
                        update_in_insert = false,
                        severity_sort = true,
                    }
                end,
            },
        },
    },
}
