return {
    'catppuccin/nvim',
        name = 'catppuccin',
    priority = 1000,
    lazy = false,
    opts = {
        flavour = 'mocha',
        transparent_background = true,
    },
    config = function(opts)
        require('catppuccin').setup(opts)
        vim.cmd.colorscheme('catppuccin')
    end,
}
