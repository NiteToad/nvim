local opt = vim.opt

-- relative position of cursor and line numbers
opt.relativenumber = true
opt.number = true

-- will prioritize splitting below and right
opt.splitbelow = true
opt.splitright = true
opt.inccommand = "split"

-- tab and indent settings 
opt.wrap = false
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

-- clipboard settings
opt.clipboard = "unnamedplus"

-- cursor remains in the middle of the screen when scrolling
opt.scrolloff = 999

-- ignore case when searching and smart case if there is a capital letter
opt.ignorecase = true
opt.smartcase = true

-- show gui colors in terminal
opt.termguicolors = true

-- remove backup and swap files and create undo directory
opt.backup = false
opt.swapfile = false
opt.undodir = vim.fn.expand("~/.config/nvim/undodir")
opt.undofile = true

-- show sign column
opt.signcolumn = "yes"

-- shorten update time and timeout length
opt.updatetime = 300
opt.timeoutlen = 300

-- search settings
opt.hlsearch = false
opt.incsearch = true

-- show matching brackets
opt.completeopt = "menuone,noinsert,noselect"

-- show hidden files
opt.hidden = true

-- default encoding 
opt.encoding = "utf-8"

-- mouse support
opt.mouse = "a"

-- :set all or :options to see all options
