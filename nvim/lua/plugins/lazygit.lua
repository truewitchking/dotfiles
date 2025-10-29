return {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
        'LazyGit',
        'LazyGitFilter',
        'LazyGitCurrentFile',
        'LazyGitFilterCurrentFile',
    },
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader>gg', '<CMD>LazyGit<CR>' },
        { '<leader>gF', '<CMD>LazyGitFilter<CR>' },
        { '<leader>gc', '<CMD>LazyGitCurrentFile<CR>' },
        { '<leader>gf', '<CMD>LazyGitFilterCurrentFile<CR>' },
    },
}
