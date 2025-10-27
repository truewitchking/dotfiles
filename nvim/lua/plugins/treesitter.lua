local languages = {
    'json',
    'json5',
    'toml',
    'yaml',
    'xml',
    'markdown',
    'markdown_inline',

    'c',
    'cpp',
    'python',
    'lua',
    'luadoc',
    'luap',
    'php',
    'rust',

    'go',
    'gomod',
    'gosum',
    'gowork',

    'typescript',
    'javascript',
    'jsdoc',
    'jsx',
    'html',
    'css',
    'scss',

    'bash',
    'fish',

    'sql',
    'dockerfile',
    'cmake',
    'make',
    'vim',
    'awk',
    'editorconfig',
    'regex',
    'diff',
    'query',
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
