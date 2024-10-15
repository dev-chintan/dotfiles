return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "j-hui/fidget.nvim"
    },
    config = function ()
        -- Set up capabilities and disable spell-check globally
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.publishDiagnostics.spellCheck = false

        -- Function to handle LSP key mappings
        local on_attach = function(_, bufnr)
            local opts = { noremap = true, silent = true }
            local keymap = vim.api.nvim_buf_set_keymap
            keymap(bufnr, 'n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
            keymap(bufnr, 'n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
            keymap(bufnr, 'n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
            keymap(bufnr, 'n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        end

        -- Set up the plugins
        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "html", "cssls", "harper_ls" },
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities, -- Apply shared capabilities
                        on_attach = on_attach, -- Use shared on_attach
                    })
                end,
            }
        })
    end,
}

