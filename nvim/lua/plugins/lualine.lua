return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        theme = 'gruvbox',
        component_separators = { left = '', right = '' },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 
                { 'encoding', icons_enabled = false},
                { 'fileformat', icons_enabled = false},
                { 'filetype', icons_enabled = false} 
            },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
    }
}

