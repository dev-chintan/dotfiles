function TransparentBackground()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    folds = false
                },
            })
            vim.cmd.colorscheme("gruvbox")
            -- TransparentBackground()
        end
    },
    {
        "ayu-theme/ayu-vim",
        name = "ayu",
        --priority = 1000,
        config = function()
            --vim.cmd.colorscheme("ayu")
            --TransparentBackground()
        end
    },
    { 
        "rose-pine/neovim", 
        name = "rose-pine",
        --priority = 1000,
        disable_italics = true,
        config = function()
            --vim.cmd.colorscheme("rose-pine")
            --TransparentBackground()
        end,
    },
}
