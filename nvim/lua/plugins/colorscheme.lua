return {
    'zenbones-theme/zenbones.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'zenwritten'
    end,
    dependencies = {
        'rktjmp/lush.nvim',
    },
}
