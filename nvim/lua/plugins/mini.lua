return {
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
        local set = vim.keymap.set
        local mini_extra = require 'mini.extra'
        mini_extra.setup {}

        local mini_ai = require 'mini.ai'
        mini_ai.setup {
            n_lines = 100,
            custom_textobjects = {
                o = mini_ai.gen_spec.treesitter {
                    a = { '@block.outer', '@conditional.outer', '@loop.outer' },
                    i = { '@block.inner', '@conditional.inner', '@loop.inner' },
                },
                f = mini_ai.gen_spec.treesitter { a = '@function.outer', i = '@function.inner' },
                c = mini_ai.gen_spec.treesitter { a = '@class.outer', i = '@class.inner' },
                t = { '<([%p%w]-)%f[^<%w][^<>]->.-</%1>', '^<.->().*()</[^/]->$' },
                d = { '%f[%d]%d+' },
                e = {
                    { '%u[%l%d]+%f[^%l%d]', '%f[%S][%l%d]+%f[^%l%d]', '%f[%P][%l%d]+%f[^%l%d]', '^[%l%d]+%f[^%l%d]' },
                    '^().*()$',
                },
                u = mini_ai.gen_spec.function_call(),
                U = mini_ai.gen_spec.function_call { name_pattern = '[%w_]' },
            },
        }

        local mini_comment = require 'mini.comment'
        mini_comment.setup {}

        local mini_bracketed = require 'mini.bracketed'
        mini_bracketed.setup {}

        local mini_pairs = require 'mini.pairs'
        mini_pairs.setup {}

        local mini_surround = require 'mini.surround'
        mini_surround.setup {}

        local mini_statusline = require 'mini.statusline'
        mini_statusline.setup {
            use_icons = false,
        }

        local mini_git = require 'mini.git'
        mini_git.setup {}

        local mini_diff = require 'mini.diff'
        mini_diff.setup {}

        local mini_pick = require 'mini.pick'
        mini_pick.setup {}
        mini_pick.registry.grep_live_narrow = function()
            local rg_config_cache = vim.uv.os_getenv 'RIPGREP_CONFIG_PATH' or ''
            local home = os.getenv 'HOME'
            vim.uv.os_setenv('RIPGREP_CONFIG_PATH', home .. '/.config/rg/config_narrow')
            mini_pick.builtin.grep_live { tool = 'rg' }
            vim.uv.os_setenv('RIPGREP_CONFIG_PATH', rg_config_cache)
        end

        set('n', '<leader><leader>', '<CMD>Pick grep_live_narrow<CR>')
        set('n', '<leader>fg', '<CMD>Pick grep_live<CR>')
        set('n', '<leader>ff', '<CMD>Pick files<CR>')
        set('n', '<leader>fb', '<CMD>Pick buffers<CR>')
        set('n', '<leader>fm', '<CMD>Pick marks<CR>')
        set('n', '<leader>fh', '<CMD>Pick help<CR>')
        set('n', '<leader>fd', '<CMD>Pick diagnostic<CR>')
    end,
}
