-- [[ Lualine Configuration ]]
return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
        require("lualine").setup({
            theme = "auto",
            sections = {
                lualine_a = {
                    {
                        "mode",
                    }
                },
            },
        })
    end,
}
