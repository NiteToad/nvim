-- [[ Colorsheme Configuration ]]

return {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme rose-pine-main")
        --	vim.cmd("highlight Normal guibg=none ctermbg=none")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end,
}
