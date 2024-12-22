vim.keymap.set("n", "<leader>gu", vim.cmd.Ex)
vim.keymap.set("n", "<leader>gb", "<C-^>")
vim.keymap.set('n', '<leader>', ':w<CR>:!g++ -std=c++17 % -o %:r && ./%:r<CR>', {noremap = true, silent = false})


