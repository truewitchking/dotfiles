return {
    {
        'j-hui/fidget.nvim',
        lazy = false,
        opts = {
            notification = { override_vim_notify = true },
        },
        keys = {
            { '<leader>hh', '<CMD>Fidget history<CR>' },
        },
    },
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
            ensure_installed = {
                'lua_ls',
                'stylua',

                'clangd',
                'rust_analyzer',

                'vtsls',
                'eslint',
                'tailwindcss',

                'gopls',

                'fish_lsp',
            },
        },
        dependencies = {
            {
                'mason-org/mason.nvim',
                opts = {},
                keys = {
                    { '<leader>pm', '<CMD>Mason<CR>' },
                },
            },
            {
                'neovim/nvim-lspconfig',
                config = function()
                    vim.diagnostic.config({
                        virtual_text = {
                            source = true,
                        },
                        severity_sort = true,
                        float = {
                            source = true,
                        },
                    })
                end,
            },
        },
    },
}
