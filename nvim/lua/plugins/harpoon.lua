return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        local set = vim.keymap.set

        harpoon:setup()

        set('n', 'gha', function()
            harpoon:list():add()
        end)
        set('n', 'ghh', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)
        set('n', 'gh1', function()
            harpoon:list():select(1)
        end)
        set('n', 'gh2', function()
            harpoon:list():select(2)
        end)
        set('n', 'gh3', function()
            harpoon:list():select(3)
        end)
        set('n', 'gh4', function()
            harpoon:list():select(4)
        end)
        set('n', 'gh!', function()
            harpoon:list():replace_at(1)
            vim.notify 'Harpoon set at 1'
        end)
        set('n', 'gh@', function()
            harpoon:list():replace_at(2)
            vim.notify 'Harpoon set at 2'
        end)
        set('n', 'gh#', function()
            harpoon:list():replace_at(3)
            vim.notify 'Harpoon set at 3'
        end)
        set('n', 'gh$', function()
            harpoon:list():replace_at(4)
            vim.notify 'Harpoon set at 4'
        end)
    end,
}
