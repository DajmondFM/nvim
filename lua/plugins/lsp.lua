return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        config = function()
            require("mason-lspconfig").setup(
                {
                    ensure_installed = {"rust_analyzer", "basedpyright", "cssls", "html", "lua_ls", "clangd"}
                }
            )
        end
    },
    {
        "neovim/nvim-lspconfig",
        build = ":MasonUpdate",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        hint = {
                            enable = true
                        }
                    }
                }
            })

            lspconfig.basedpyright.setup({
                capabilities = capabilities,
                settings = {
                    basedpyright = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "openFilesOnly",
                            useLibraryCodeForTypes = true
                        }
                    }
                }
            })

            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                settings = {
                    -- ["rust-analyzer"] = {
                    --     inlayHints = {
                    --         -- enable = true,
                    --         chainingHints = true,
                    --         parameterHints = true,
                    --         typeHints = true,
                    --     }
                    -- }
                    ["rust-analyzer"] = {
                        inlayHints = {
                            bindingModeHints = {
                                enable = false,
                            },
                            chainingHints = {
                                enable = true,
                            },
                            closingBraceHints = {
                                enable = true,
                                minLines = 25,
                            },
                            closureReturnTypeHints = {
                                enable = "never",
                            },
                            lifetimeElisionHints = {
                                enable = "never",
                                useParameterNames = false,
                            },
                            maxLength = 25,
                            parameterHints = {
                                enable = true,
                            },
                            reborrowHints = {
                                enable = "never",
                            },
                            renderColons = true,
                            typeHints = {
                                enable = true,
                                hideClosureInitialization = false,
                                hideNamedConstructor = false,
                            },
                        },
                    }
                }
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
                settings = {
                    clangd = {
                        InlayHints = {
                            Designators = true,
                            Enabled = true,
                            ParameterNames = true,
                            DeducedTypes = true,
                        },
                        fallbackFlags = { "-std=c++20" },
                    },
                }
            })

            lspconfig.cssls.setup({
                capabilities = capabilities
            })

            lspconfig.html.setup({
                capabilities = capabilities
            })
            -- vim.lsp.buf.inlay_hints(0, true)
            vim.lsp.inlay_hint.enable()
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
