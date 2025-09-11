local M = {}

M.base_30 = {
    white = "#4C4F69",
    darker_black = "#E6E9EF",
    black = "#EFF1F5", --  nvim bg
    black2 = "#E9ECEF",
    one_bg = "#E5E8EC", -- real bg of onedark
    one_bg2 = "#D6D9E0",
    one_bg3 = "#CCD0DA",
    grey = "#BCC0CC",
    grey_fg = "#ACB0BE",
    grey_fg2 = "#9DA2B1",
    light_grey = "#8E94A4",
    red = "#D20F39",
    baby_pink = "#DD7878",
    pink = "#EA76CB",
    line = "#E3E6EC", -- for lines like vertsplit
    green = "#40A02B",
    vibrant_green = "#7AA89F",
    nord_blue = "#7287FD",
    blue = "#1E66F5",
    yellow = "#DF8E1D",
    sun = "#F5A97F",
    purple = "#8839EF",
    dark_purple = "#5A4D78",
    teal = "#179299",
    orange = "#FE640B",
    cyan = "#04A5E5",
    statusline_bg = "#E3E6EC",
    lightbg = "#D6D9E0",
    pmenu_bg = "#7287FD",
    folder_bg = "#7287FD",
}

M.base_16 = {
    base00 = "#EFF1F5",
    base01 = "#E6E9EF",
    base02 = "#D6D9E0",
    base03 = "#CCD0DA",
    base04 = "#BCC0CC",
    base05 = "#4C4F69",
    base06 = "#2E2F36",
    base07 = "#1E1E2E",
    base08 = "#D20F39",
    base09 = "#FE640B",
    base0A = "#DF8E1D",
    base0B = "#40A02B",
    base0C = "#179299",
    base0D = "#1E66F5",
    base0E = "#8839EF",
    base0F = "#62657F",
}

M.type = "light"

M = require("base46").override_theme(M, "catppuccin-latte")

return M
