return {
    {
        'j-hui/fidget.nvim',
        opts = {},
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
