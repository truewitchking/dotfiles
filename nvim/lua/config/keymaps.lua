local set = vim.keymap.set

set("n", "<leader>o", "<CMD>update<CR> <CMD>source<CR>")
set("n", "<leader>w", "<CMD>write<CR>")
set("n", "<leader>q", "<CMD>quit<CR>")
set("n", "<leader>Q", "<CMD>quit!<CR>")

set("n", "<C-h>", "<C-w><C-h>")
set("n", "<C-l>", "<C-w><C-l>")
set("n", "<C-j>", "<C-w><C-j>")
set("n", "<C-k>", "<C-w><C-k>")

set("n", "<leader>tn", vim.cmd.tabnew)
set("n", "<leader>tc", vim.cmd.tabclose)

set("n", "gro", ":lua vim.diagnostic.open_float()<CR>")

set("n", "<esc>", function()
    if vim.opt.hlsearch:get() then
        vim.cmd.nohl()
        return ""
    else
        return "<CR>"
    end
end, { expr = true })
