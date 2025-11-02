return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            go = { 'gofmt' },
            javascript = { 'prettier', stop_after_first = true },
            javascriptreact = { 'prettier', stop_after_first = true },
            typescript = { 'prettier', stop_after_first = true },
            typescriptreact = { 'prettier', stop_after_first = true },
            json = { 'prettier', stop_after_first = true },
            html = { 'prettier', stop_after_first = true },
            css = { 'prettier', stop_after_first = true },
            scss = { 'prettier', stop_after_first = true },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = 'fallback',
        },
    },
}
