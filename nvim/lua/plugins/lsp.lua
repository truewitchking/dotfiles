return {
    {
        'j-hui/fidget.nvim',
        opts = {
            notification = {
                override_vim_notify = true,
            },
        },
        keys = {
            { '<leader>hh', '<CMD>Fidget history<CR>' },
        },
    },
    {
        'mason-org/mason.nvim',
        opts = {},
    },
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {},
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        opts = {
            ensure_installed = {
                'lua_ls',
            },
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
}
