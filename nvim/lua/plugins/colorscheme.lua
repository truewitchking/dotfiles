return {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        vim.g.zenwritten_transparent_background = true
    end,
    config = function()
        vim.cmd.colorscheme "zenwritten"
    end,
    dependencies = { "rktjmp/lush.nvim" },
}
