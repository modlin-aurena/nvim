-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

--- @type ChadrcConfig
return {
    base46 = {
        theme = "material-deep-ocean",
        theme_toggle = {
            "aquarium",
            "one_light",
        },
        transparency = true,
        -- hl_override = {
        --     Keyword = {
        --         fg = "purple",
        --         bold = true,
        --     },
        --     ["@keyword"] = {
        --         fg = "purple",
        --         bold = true,
        --     },
        --     SpecialKey = {
        --         fg = "purple",
        --     },
        --     ["@string"] = {
        --         fg = "pink",
        --     },
        --     Variable = {
        --         fg = "white",
        --     },
        --     ["@variable"] = {
        --         fg = "white",
        --     },
        --     Number = {
        --         fg = "greem",
        --     },
        --     ["@number"] = {
        --         fg = "green",
        --     },
        --     Boolean = {
        --         fg = "blue",
        --     },
        --     Operator = {
        --         fg = "purple",
        --         bold = true,
        --     },
        --     ["@operator"] = {
        --         fg = "purple",
        --         bold = true,
        --     },
        --     Type = {
        --         fg = "vibrant_green",
        --     },
        --     Identifier = {
        --         fg = "purple",
        --     },
        --     ["@identifier"] = {
        --         fg = "purple",
        --     },
        -- },
    },
    ui = {
        tabufline = {
            enabled = false,
            order = {
                "tabs",
                "buffers",
                "modlin",
            },
            modules = {
                modlin = function()
                    return "An environment of Modlin Inc."
                end,
            },
            lazyload = false,
        },
        statusline = {
            theme = "vscode_colored",
        },
        nvdash = {
            load_on_startup = true,
        },
        cmp = {
            style = "default",
        },
        telescope = {
            style = "bordered",
        },
    },
}
