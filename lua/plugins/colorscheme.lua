return {
    { 
        "ellisonleao/gruvbox.nvim", 
        name = "gruvbox",
        priority = 1000 , 
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end
    },
	{ 
		"rose-pine/neovim", 
        name = "rose-pine",
        disable_italics = true,
        config = function()
           -- vim.cmd.colorscheme("rose-pine")
        end,
    },
}
