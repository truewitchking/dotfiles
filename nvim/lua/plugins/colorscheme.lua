return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	opts = {
		flavour = "mocha",
		transparent_background = true,
		integrations = {
			alpha = true,
			blink_cmp = {
				style = "bordered",
			},
		},
	},
	config = function(opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme("catppuccin")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	end,
}
