if true then
    return {}
end

return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        local set = vim.keymap.set

        harpoon:setup()

        set('n', '<leader>ha', function()
            harpoon:list():add()
        end)
        set('n', '<leader>hh', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)
        set('n', '<leader>h1', function()
            harpoon:list():select(1)
        end)
        set('n', '<leader>h2', function()
            harpoon:list():select(2)
        end)
        set('n', '<leader>h3', function()
            harpoon:list():select(3)
        end)
        set('n', '<leader>h4', function()
            harpoon:list():select(4)
        end)
        set('n', '<leader>hp', function()
            harpoon:list():prev()
        end)
        set('n', '<leader>hn', function()
            harpoon:list():next()
        end)
    end,
}
