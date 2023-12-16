-- [[ Lualine Configuration ]]
return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
        return {
            --[[add your custom lualine config here]]
            theme = "tokyonight",
        }
    end,
}
