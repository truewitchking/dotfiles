---@diagnostic disable: unused-local

return {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    config = function()
        local set = vim.keymap.set
        local telescope = require 'telescope'
        local builtin = require 'telescope.builtin'
        local actions = require 'telescope.actions'

        telescope.setup {
            defaults = {
                mappings = {},
            },
        }
        telescope.load_extension 'fzf'
        telescope.load_extension 'ui-select'

        set('n', '<leader><leader>', builtin.live_grep)
        set('n', '<leader>ff', builtin.find_files)
        set('n', '<leader>fg', builtin.git_files)
        set('n', '<leader>fb', builtin.buffers)
        set('n', '<leader>fh', builtin.help_tags)
        set('n', '<leader>fs', builtin.grep_string)
    end,
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-ui-select.nvim' },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },
}
