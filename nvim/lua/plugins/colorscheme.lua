-- return {
--     'nyoom-engineering/oxocarbon.nvim',
--     config = function()
--         vim.opt.background = 'dark'
--         vim.cmd.colorscheme('oxocarbon')
--         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--         vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--     end,
--     lazy = false,
-- }

-- return {
--     'kepano/flexoki-neovim',
--     name = 'flexoki',
--     config = function()
--         vim.cmd.colorscheme('flexoki-dark')
--     end,
-- }

-- return {
--     'rebelot/kanagawa.nvim',
--     config = function()
--         vim.cmd.colorscheme('kanagawa-dragon')
--         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--         vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--     end,
-- }

return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        opts = {
            flavour = 'mocha',
            transparent_background = true,
        }
        require('catppuccin').setup(opts)
        vim.cmd.colorscheme('catppuccin')
    end,
    lazy = false,
}
