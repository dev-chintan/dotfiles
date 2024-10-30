vim.keymap.set("n", "<leader>gu", vim.cmd.Ex)
vim.keymap.set("n", "<leader>gb", "<C-^>")

vim.api.nvim_set_keymap("n", "<leader>cr", ":w<CR>:!g++ % -o %:r && ./%:r<CR>", { noremap = true, silent = true })

