vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>Q', ':quit!<CR>')
vim.keymap.set('n', '<esc>', ':nohlsearch<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

vim.keymap.set('n', '<leader>ll', ':lua vim.diagnostic.open_float()<CR>')

vim.keymap.set('n', '<leader>pp', ':Lazy<CR>')
