---@diagnostic disable: unused-local

return {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
        keymaps = {
            ["q"] = { "actions.close", mode = "n" },
            ["<leader>e"] = { "actions.close", mode = "n" },
        },
        columns = {
            "permissions",
            "size",
            "mtime",
        },
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        lsp_file_methods = {
            enabled = false,
            autosave_changes = true,
            timeout_ms = 1000,
        },
        git = {
            add = function(path)
                return true
            end,
            mv = function(src_path, dest_path)
                return true
            end,
            rm = function(path)
                return true
            end,
        },
        float = {
            border = "rounded",
        },
    },
    keys = {
        { "<leader>e", "<CMD>Oil<CR>" },
    },
}
