local languages = {
    'c',
    'lua',
    'json',
    'toml',
    'yaml',
    'awk',
    'bash',
    'cmake',
    'cpp',
    'css',
    'dockerfile',
    'fish',
    'go',
    'gomod',
    'gosum',
    'json5',
    'jsx',
    'make',
    'markdown',
    'php',
    'python',
    'sql',
    'typescript',
    'vim',
    'xml',
    'lisp',
}

return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install(languages)

        vim.api.nvim_create_autocmd('FileType', {
            group = vim.api.nvim_create_augroup('treesitter.setup', {}),
            callback = function(args)
                local buf = args.buf
                local filetype = args.match

                local language = vim.treesitter.language.get_lang(filetype) or filetype
                if not vim.treesitter.language.add(language) then
                    return
                end

                vim.treesitter.start(buf, language)
                vim.bo[buf].indentexpr = 'v:lua.require\'nvim-treesitter\'.indentexpr()'
            end,
        })
    end,
}
