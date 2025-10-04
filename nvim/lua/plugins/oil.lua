return {
    "stevearc/oil.nvim",
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
            keymaps = {
                ["q"] = { "actions.close", mode = "n" },
            },
        columns = {
            "permissions",
            "size",
        },
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        lsp_file_methods = {
            enabled = false,
        },
    },
    keys = {
        {"<leader>e", "<CMD>Oil<CR>"},
    },
}
