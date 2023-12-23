return {
    "Theprimeagen/harpoon",
    dependencies = {"nvim-lua/plenary.nvim"},
    lazy = false,
    config = function()

    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    local remap = vim.keymap.set

    remap("n", "<Leader>a", mark.add_file)
    remap("n", "<Leader>d", mark.rm_file)
    remap("n", "<C-e>", ui.toggle_quick_menu)

    remap("n", "<C-j>", function() ui.nav_file(1) end)
    remap("n", "<C-k>", function() ui.nav_file(2) end)
    remap("n", "<C-l>", function() ui.nav_file(3) end)
    remap("n", "<C-;>", function() ui.nav_file(4) end)
end,
}
