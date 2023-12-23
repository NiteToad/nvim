-- [[ GitHub Copilot ]]

return {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
        vim.keymap.set("i", "<Right>", "<Plug>(copilot-accept-word)") -- Accept suggestion
        vim.keymap.set("i", "<C-c>", "<Plug>(copilot-dismiss)") -- Dismiss suggestion
        vim.keymap.set("i", "<Left>", "<Plug>(copilot-suggest)") -- Raise suggestion
    end,
}
