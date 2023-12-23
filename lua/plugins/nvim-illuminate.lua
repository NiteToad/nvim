-- [[ Illuminate same word under cursor ]]
return {
    "RRethy/vim-illuminate",
    lazy = true,
    config = function()
        require("illuminate").configure({})
    end,
}
