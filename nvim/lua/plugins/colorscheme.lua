return {
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                bold = false,
                contrast = "hard",
                transparent_mode = true,
            })
            vim.cmd.colorscheme("gruvbox")
        end
    },
}
