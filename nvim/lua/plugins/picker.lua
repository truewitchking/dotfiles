return {
    { 
        'nvim-mini/mini.pick',
        version = false,
        opts = {
        },
        keys = {
            {'<leader><leader>', '<CMD>Pick grep_live<CR>'},
            {'<leader>pf', '<CMD>Pick files<CR>'},
            {'<leader>pb', '<CMD>Pick buffers<CR>'},
            {'<leader>pm', '<CMD>Pick marks<CR>'},
            {'<leader>ph', '<CMD>Pick help<CR>'},
       },
        lazy = false,
    },
    {
        'nvim-mini/mini.extra',
        version = false,
        opts = {},
        lazy = false,
    },
}
