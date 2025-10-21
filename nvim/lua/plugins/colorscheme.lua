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

-- return {
--     'aktersnurra/no-clown-fiesta.nvim',
--     lazy = false,
--     priority = 1000,
--     opts = {
--         transparent = true,
--     },
--     config = function(_, opts)
--         local clf = require('no-clown-fiesta')
--         clf.setup(opts)
--         vim.cmd.colorscheme('no-clown-fiesta')
--     end,
-- }
