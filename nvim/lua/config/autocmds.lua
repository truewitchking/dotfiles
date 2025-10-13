vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	pattern = "*",
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("RecordingEnter", {
	pattern = "*",
	callback = function()
		vim.g.macro_recording = "Rec @" .. vim.fn.reg_recording()
		vim.cmd("redrawstatus")
	end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
	pattern = "*",
	callback = function()
		vim.g.macro_recording = ""
		vim.cmd("redrawstatus")
	end,
})
