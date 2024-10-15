return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                prompt_prefix = '🔍  ',
                selection_caret = '➡️  ',
            },
        })

        vim.keymap.set('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("grep > ") })  -- Grep for a string
        end, { desc = 'Grep String' })

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' }) -- Find files
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'List Buffers' }) -- List buffers
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' }) -- Find help tags
        vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = 'Treesitter Symbols' }) -- Find Treesitter symbols
    end
}

