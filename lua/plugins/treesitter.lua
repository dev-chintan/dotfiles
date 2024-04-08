return 
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "cpp",
                "go",
                "java",
                "javascript",
                "lua",
                "python",
                "typescript",
            },

            sync_install = true,

            auto_install = true,
        })
    end,
}
