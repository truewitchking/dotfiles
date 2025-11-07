return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    config = function()
        local set = vim.keymap.set
        local telescope = require "telescope"
        local builtin = require "telescope.builtin"

        telescope.setup {
            defaults = {
                mappings = {},
            },
            extensions = {
                fzf = {},
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {},
                },
            },
        }
        telescope.load_extension "fzf"
        telescope.load_extension "ui-select"

        set("n", "<leader><leader>", builtin.live_grep)
        set("n", "<leader>ff", builtin.find_files)
        set("n", "<leader>fg", builtin.git_files)
        set("n", "<leader>fb", builtin.buffers)
        set("n", "<leader>fh", builtin.help_tags)
        set("n", "<leader>fm", builtin.man_pages)
        set("n", "<leader>fs", builtin.grep_string)
        set("n", "<leader>fd", builtin.diagnostics)
        set("n", "<leader>f/", builtin.current_buffer_fuzzy_find)

        set("n", "grr", builtin.lsp_references)
        set("n", "gri", builtin.lsp_implementations)
        set("n", "grt", builtin.lsp_type_definitions)
        set("n", "grd", builtin.lsp_definitions)
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-ui-select.nvim" },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
}
