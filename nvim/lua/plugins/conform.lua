return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
  		},
	},
	keys = {
		{ "<leader>rr", '<CMD>lua require("conform").format({lsp_format = "fallback", timeout_ms = 500})<CR>' },
	},
}
