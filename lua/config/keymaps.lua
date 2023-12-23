vim.g.mapleader = " "
vim.g.maplocalleader = " "

local remap = vim.keymap.set

-- Exit file, and explore file directory
remap("n", "<Leader>ef", vim.cmd.Ex, {desc = "exit file"})

-- Split Screens bottom, and right 
remap("n", "<Leader>sb", vim.cmd.split) -- will split -> bottom 
remap("n", "<Leader>sr", vim.cmd.vsplit) -- will split -> right

-- Move between splits
remap("n", "<Leader>ml", "<C-w>l", { silent = true, desc = "move to right window"}) -- move to right
remap("n", "<Leader>mj", "<C-w>j", { silent = true, desc = "move to below window"}) -- move to bottom
remap("n", "<Leader>mk", "<C-w>k", { silent = true, desc = "move to above window"}) -- move to top
remap("n", "<Leader>mh", "<C-w>h", { silent = true, desc = "move to left window"}) -- move to left

-- Simpler lazy call up
remap("n", "<Leader>l", "<cmd>Lazy<CR>", { silent = true})
