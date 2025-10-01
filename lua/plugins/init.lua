return {
    -- using lazy.nvim
    {
        "S1M0N38/love2d.nvim",
        cmd = "LoveRun",
        opts = {},
        keys = {
            { "<leader>v", ft = "lua", desc = "LÖVE" },
            { "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
            { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
        },
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "typescript-language-server",
                "rust-analyzer",
                "graphql-language-service-cli",
                "eslint-lsp",
            },
        },
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                side = "left",
                ignored_files = {
                    ".git",
                },
                width = function()
                    return vim.o.columns
                end,
                float = {
                    enable = true,
                    open_win_config = function()
                        return {
                            relative = "editor",
                            border = "none",
                            width = vim.o.columns,
                            height = vim.o.lines - 2,
                            row = 0,
                            col = 0,
                        }
                    end,
                },
            },
            filters = {},
            actions = {
                open_file = {
                    quit_on_open = true, -- Close tree after opening file
                },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "typescript",
                "rust",
                "graphql",
            },
        },
    },
}
