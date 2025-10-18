return {
    {
        'nvim-mini/mini.pick',
        version = false,
        lazy = false,
        opts = {
        },
        keys = {
            { '<leader><leader>', '<CMD>Pick grep_live<CR>' },
            { '<leader>ff',       '<CMD>Pick files<CR>' },
            { '<leader>fb',       '<CMD>Pick buffers<CR>' },
            { '<leader>fm',       '<CMD>Pick marks<CR>' },
            { '<leader>fh',       '<CMD>Pick help<CR>' },
            -- { '<leader>ld',       '<CMD>Pick diagnostic<CR>' },
        },
    },
    {
        'nvim-mini/mini.extra',
        version = false,
        lazy = false,
        opts = {},
    },
}
