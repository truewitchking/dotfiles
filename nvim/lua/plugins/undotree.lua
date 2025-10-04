return {
    "jiaoshijie/undotree",
    ---@module 'undotree.collector'
    ---@type UndoTreeCollector.Opts
    opts = {},
    keys = {
        { "<leader>u", "<CMD>lua require('undotree').toggle()<CR>" },
    },
}
