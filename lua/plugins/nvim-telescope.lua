return {
    {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "nvim-treesitter/nvim-treesitter",
    },

    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fg", builtin.live_grep)
        vim.keymap.set("n", "<leader>fb", builtin.buffers)
        vim.keymap.set("n", "<leader>fh", builtin.help_tags)
        vim.keymap.set("n", "<leader>fc", builtin.commands)
    end,
    },
    {
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = false,
    config = function()
        require("telescope").setup ({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                    }
                }
            }
        })
        require("telescope").load_extension("ui-select")
    end
    },
}
