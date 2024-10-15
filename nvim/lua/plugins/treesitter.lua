return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "cpp",
                "go",
                "html",
                "css",
                "markdown",
                "javascript",
                "typescript",
                "lua",
                "python",
            },
            sync_install = true,
            auto_install = true,
            highlight = {
                enable = true,
            },
        })
    end,
}

