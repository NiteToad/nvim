-- [[ Altering Startup ]]
return {

    "goolord/alpha-nvim",
    opts = function(_, opts)
        local logo = [[__    __ __   __              ________                         __ 
|  \  |  \  \ |  \            |        \                       |  \
| ▓▓\ | ▓▓\▓▓_| ▓▓_    ______  \▓▓▓▓▓▓▓▓ ______   ______   ____| ▓▓
| ▓▓▓\| ▓▓  \   ▓▓ \  /      \   | ▓▓   /      \ |      \ /      ▓▓
| ▓▓▓▓\ ▓▓ ▓▓\▓▓▓▓▓▓ |  ▓▓▓▓▓▓\  | ▓▓  |  ▓▓▓▓▓▓\ \▓▓▓▓▓▓\  ▓▓▓▓▓▓▓
| ▓▓\▓▓ ▓▓ ▓▓ | ▓▓ __| ▓▓    ▓▓  | ▓▓  | ▓▓  | ▓▓/      ▓▓ ▓▓  | ▓▓
| ▓▓ \▓▓▓▓ ▓▓ | ▓▓|  \ ▓▓▓▓▓▓▓▓  | ▓▓  | ▓▓__/ ▓▓  ▓▓▓▓▓▓▓ ▓▓__| ▓▓
| ▓▓  \▓▓▓ ▓▓  \▓▓  ▓▓\▓▓     \  | ▓▓   \▓▓    ▓▓\▓▓    ▓▓\▓▓    ▓▓
 \▓▓   \▓▓\▓▓   \▓▓▓▓  \▓▓▓▓▓▓▓   \▓▓    \▓▓▓▓▓▓  \▓▓▓▓▓▓▓ \▓▓▓▓▓▓▓]]
        opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
    end,
}