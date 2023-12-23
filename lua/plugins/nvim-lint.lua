-- [[ Neovim Lint ]]

return {
    "mfussenegger/nvim-lint",
    event = "BufReadPre",
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            typescript = { "eslint" },
            typescriptreact = { "eslint" },
            javascript = { "eslint" },
            javascriptreact = { "eslint" },
            lua = { "luacheck" },
            python = { "pylint", "flake8" },
            yaml = { "yamllint" },
            java = { "checkstyle" },
            markdown = { "markdownlint" },
            go = { "golangci_lint" },
            sh = { "shellcheck" },
            cpp = { "cppcheck" },
        }
        local lint_group = vim.api.nvim_create_augroup("lint", {})
        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" },{
            group = lint_group,
            callback = function()
            lint.try_lint()
            end,
        })

        vim.keymap.set("n", "<leader>tl", function ()
            lint.try_lint()
        end, { desc = "Trigger lint" })
    end,
}
