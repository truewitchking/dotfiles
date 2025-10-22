return {
    {
        'nvim-mini/mini.pick',
        version = false,
        lazy = false,
        opts = {},
        config = function(_, opts)
            local picker = require('mini.pick')
            picker.registry.grep_live_narrow = function()
                local rg_config_cache = vim.uv.os_getenv('RIPGREP_CONFIG_PATH') or ''
                local home = os.getenv('HOME')

                vim.uv.os_setenv('RIPGREP_CONFIG_PATH', home .. '/.config/rg/config_narrow')
                picker.builtin.grep_live({ tool = 'rg' })
                vim.uv.os_setenv('RIPGREP_CONFIG_PATH', rg_config_cache)
            end
            picker.setup(opts)
        end,
        keys = {
            { '<leader><leader>', '<CMD>Pick grep_live_narrow<CR>' },
            { '<leader>fg', '<CMD>Pick grep_live<CR>' },
            { '<leader>ff', '<CMD>Pick files<CR>' },
            { '<leader>fb', '<CMD>Pick buffers<CR>' },
            { '<leader>fm', '<CMD>Pick marks<CR>' },
            { '<leader>fh', '<CMD>Pick help<CR>' },
            { '<leader>ld', '<CMD>Pick diagnostic<CR>' },
            { '<leader>ld', '<CMD>Pick diagnostic<CR>' },
        },
    },
    {
        'nvim-mini/mini.extra',
        version = false,
        lazy = false,
        opts = {},
    },
}
