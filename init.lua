vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
    require "mappings"
end)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true

-- chadrc.lua
-- vim.g.nvchad_theme = "suffix_light"
vim.cmd [[set mouse=]]

-- local material = require "lualine.themes.material"

-- Change the background of lualine_c section for normal mode
-- material.normal.c.bg = "#00000000"
-- material.insert.b.bg = "#00000000"
-- material.visual.b.bg = "#00000000"
-- material.replace.b.bg = "#00000000"
-- material.inactive.c.bg = "#00000000"

-- require("lualine").setup {
--     options = { theme = material },
-- }

-- Store the state of the floating window and buffer
local floating_bufnr = nil
local floating_winnr = nil

-- Function to toggle the floating text
local function toggle_floating_text()
    if floating_winnr and vim.api.nvim_win_is_valid(floating_winnr) then
        -- If the window exists, close it
        vim.api.nvim_win_close(floating_winnr, true)
        floating_winnr = nil
        floating_bufnr = nil
    else
        -- Create a new buffer and window to display the text
        floating_bufnr = vim.api.nvim_create_buf(false, true) -- No file, no listed buffer
        local width = 30
        local height = 3
        -- Create the window
        floating_winnr = vim.api.nvim_open_win(floating_bufnr, true, {
            relative = "editor",
            width = width,
            height = height,
            col = (vim.o.columns - width) / 2,
            row = (vim.o.lines - height) / 2,
            style = "minimal",
            border = "rounded",
        })

        -- Set the content of the buffer
        vim.api.nvim_buf_set_lines(floating_bufnr, 0, -1, false, {
            " Hello, Neovim!",
            " This is your toggleable text.",
        })

        -- Optional: Set some window options
        vim.api.nvim_win_set_option(floating_winnr, "winhl", "Normal:Normal")
    end
end

-- Create a user command to trigger the toggle function
vim.api.nvim_create_user_command("ShowTabs", toggle_floating_text, {})

vim.opt.shell = "pwsh"
