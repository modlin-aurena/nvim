-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

--- @type ChadrcConfig
return {
    base46 = {
        theme = "material-deep-ocean",
        transparency = true,
    },
    ui = {
        tabufline = {
            enabled = false,
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
