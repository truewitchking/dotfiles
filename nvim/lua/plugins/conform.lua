return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            javascript = { 'prettier' },
            javascriptreact = { 'prettier' },
            typescript = { 'prettier' },
            typescriptreact = { 'prettier' },
            json = { 'prettier' },
            html = { 'prettier' },
            css = { 'prettier' },
            scss = { 'prettier' },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = 'fallback',
        },
    },
}
