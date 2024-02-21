return {
    -- LSP Configuration & Plugins
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
                -- C/C++
                "clangd",
                -- Go
                "gopls",
                -- Java
                "jdtls",
                -- Python
                "pyright",
                --JavaScript/TypeScript
                "tsserver"
            },
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup{}
                end,
            }
        })

        -- Configure diagostics border
        vim.diagnostic.config({
            update_in_insert = true,
            float = {
                focusable = "false",
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end,
}
