return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "j-hui/fidget.nvim"
    },
    config = function ()
        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "html",
                "cssls",
                "harper_ls"
            },
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup{
                        on_attach = function(client, bufnr)
                            -- Key mappings for LSP
                            local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
                            local opts = { noremap = true, silent = true }

                            -- LSP key mappings
                            buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
                            buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
                            buf_set_keymap('n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
                            buf_set_keymap('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
                        end,
                    }
                end,
            }
        })
    end,
}
