-- =============================================================================
-- URL: https://github.com/sainnhe/gruvbox-material
-- Filename: lua/lualine/themes/gruvbox-material.lua
-- Author: sainnhe
-- Email: i@sainnhe.dev
-- License: MIT License
-- =============================================================================

local palette = {
  bg_dim = { "#f2e5bc", 228 },
  bg0 = { "#fbf1c7", 229 },
  bg1 = { "#f4e8be", 228 },
  bg2 = { "#f2e5bc", 228 },
  bg3 = { "#eee0b7", 223 },
  bg4 = { "#e5d5ad", 223 },
  bg5 = { "#ddccab", 250 },
  bg_statusline1 = { "#f2e5bc", 223 },
  bg_statusline2 = { "#f2e5bc", 223 },
  bg_statusline3 = { "#e5d5ad", 250 },
  bg_diff_green = { "#e6eabc", 194 },
  bg_visual_green = { "#dee2b6", 194 },
  bg_diff_red = { "#f9e0bb", 217 },
  bg_visual_red = { "#f1d9b5", 217 },
  bg_diff_blue = { "#e2e6c7", 117 },
  bg_visual_blue = { "#dadec0", 117 },
  bg_visual_yellow = { "#fae7b3", 226 },
  bg_current_word = { "#f2e5bc", 228 },
  fg0 = { "#654735", 237 },
  fg1 = { "#4f3829", 237 },
  red = { "#c14a4a", 88 },
  orange = { "#c35e0a", 130 },
  yellow = { "#b47109", 136 },
  green = { "#6c782e", 100 },
  aqua = { "#4c7a5d", 165 },
  blue = { "#45707a", 24 },
  purple = { "#945e80", 96 },
  bg_red = { "#ae5858", 88 },
  bg_green = { "#6f8352", 100 },
  bg_yellow = { "#a96b2c", 130 },
  grey0 = { "#a89984", 246 },
  grey1 = { "#928374", 245 },
  grey2 = { "#7c6f64", 243 },
  none = { "NONE", "NONE" },
}

-- Make transparent bg
palette.bg_statusline1 = palette.none
palette.bg_statusline2 = palette.none

local theme
theme = {
  normal = {
    a = { bg = palette.grey2[1], fg = palette.bg0[1], gui = "bold" },
    b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
  },
  insert = {
    a = { bg = palette.bg_green[1], fg = palette.bg0[1], gui = "bold" },
    b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
  },
  visual = {
    a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = "bold" },
    b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
  },
  replace = {
    a = { bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = "bold" },
    b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
  },
  command = {
    a = { bg = palette.blue[1], fg = palette.bg0[1], gui = "bold" },
    b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
  },
  terminal = {
    a = { bg = palette.purple[1], fg = palette.bg0[1], gui = "bold" },
    b = { bg = palette.bg_statusline3[1], fg = palette.fg1[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.fg1[1] },
  },
  inactive = {
    a = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
    b = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
    c = { bg = palette.bg_statusline1[1], fg = palette.grey2[1] },
  },
}

return theme
