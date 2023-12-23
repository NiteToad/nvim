-- [[ Language Server Protocol Configuration ]]

return {
    {
        "williamboman/mason.nvim",
        dependencies = {
        "williamboman/mason-lspconfig.nvim",
        },
        lazy = false,
        config = function()

            local mason = require("mason")
            local mason_lsp_config = require("mason-lspconfig")

            -- [[ Mason setup ]]
            mason.setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "...",
                        package_uninstalled = "x",
                    },
                }

            })

            -- [[ LSP servers to install ]]
            mason_lsp_config.setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "efm",
                    "tsserver",
                    "html",
                    "cssls",
                    "jsonls",
                    "yamlls",
                    "dockerls",
                    "bashls",
                    "marksman",
                    "clangd",
                    "jdtls",
                },
                automatic_installation = true,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "windwp/nvim-autopairs",
            "hrsh7th/nvim-lspconfig",
        },
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- [[ Python server ]]
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })

            -- [[ Typescript/Javascript server ]]
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })

            -- [[ HTML server ]]
            lspconfig.html.setup({
                capabilities = capabilities,
            })

            -- [[ CSS server ]]
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })

            -- [[ JSON server ]]
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })

            -- [[ YAML server ]]
            lspconfig.yamlls.setup({
                capabilities = capabilities,
            })

            -- [[ Docker server ]]
            lspconfig.dockerls.setup({
                capabilities = capabilities,
            })

            -- [[ Bash server ]]
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })

            -- [[ EFM server ]]
            lspconfig.efm.setup({
                capabilities = capabilities,
            })

            -- [[ Markdown server ]]
            lspconfig.marksman.setup({
                capabilities = capabilities,
            })

            -- [[ C/C++ server ]]
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })

            -- [[ Java server ]]
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })

            -- [[ Lua server ]]
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"},
                        },
                        workspace = {
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                [vim.fn.stdpath("config") .. "/lua"] = true,
                            },
                        },
                    },
                },
            })


            -- [[ Keymaps ]]
            local remap = vim.keymap.set

            remap("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" }) -- show documentation 
            remap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" }) -- go to definition
            remap({"n"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" }) -- code action
            remap("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" }) -- go to declaration
            remap("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" }) -- go to implementation
            remap("n", "gr", vim.lsp.buf.references, { desc = "Go to references" }) -- go to references

        end,
    },

}
