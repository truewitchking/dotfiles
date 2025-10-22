return {
    'zenbones-theme/zenbones.nvim',
    lazy = false,
    priority = 1000,
    dependencies = 'rktjmp/lush.nvim',
    config = function()
        vim.g.background = 'dark'
        vim.cmd.colorscheme('zenwritten')
    end,
}
