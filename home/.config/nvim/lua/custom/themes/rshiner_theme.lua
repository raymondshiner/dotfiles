-- Thanks to original theme for existing https://github.com/microsoft/vscode/blob/main/extensions/theme-defaults/themes/dark_plus.json
-- this is a modified version of it

local M = {}

M.base_30 = {
  white = "#dee1e6",
  darker_black = "#000000",
  black = "#1E1E1E", --  nvim bg
  black2 = "#252525",
  one_bg = "#282828",
  one_bg2 = "#313131",
  one_bg3 = "#3a3a3a",
  grey = "#444444",
  grey_fg = "#4e4e4e",
  grey_fg2 = "#585858",
  light_grey = "#626262",
  red = "#f7070b",
  baby_pink = "#f92672",
  pink = "#ff00aa",
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#96e072",
  green1 = "#4EC994",
  vibrant_green = "#bfd8b2",
  blue = "#7cb7ff",
  nord_blue = "#60a6e0",
  yellow = "#ffe66d",
  sun = "#e1c487",
  purple = "#c74ded",
  dark_purple = "#b77bdf",
  teal = "#4294D6",
  orange = "#f39c12",
  cyan = "#00e8c6",
  statusline_bg = "#242424",
  lightbg = "#303030",
  pmenu_bg = "#60a6e0",
  folder_bg = "#7A8A92",
}

M.base_16 = {
  --author of this template Tomas Iser, @tomasiser on github,
  base00 = "#101010",
  base01 = "#262626",
  base02 = "#303030",
  base03 = "#3C3C3C",
  base04 = "#464646",
  base05 = "#D4D4D4",
  base06 = "#E9E9E9",
  base07 = "#FFFFFF",
  base08 = "#D5CED9",
  base09 = "#B5CEA8",
  base0A = "#D7BA7D",
  base0B = "#BD8D78",
  base0C = M.base_30.orange,
  base0D = "#DCDCAA",
  base0E = "#C586C0",
  base0F = "#E9E9E9",
}

M.polish_hl = {
  Comment = { fg = M.base_30.red},
  Include = { fg = M.base_30.purple },
  Label = { fg = M.base_30.cyan },
  Type = { fg = M.base_30.cyan },
  Constants = { fg = M.base_30.grey },
  ["@string"] = { fg = M.base_30.green },
  ["@parameter"] = { fg = M.base_30.blue },
  ["@keyword"] = { fg = M.base_30.purple},
  ["@variable"] = { fg = M.base_30.cyan },
  ["@field.key"] = { fg = M.base_30.green1 },
  ["@keyword.return"] = { fg = M.base_30.purple},
  ["@keyword.function"] = { fg = M.base_30.teal },
}

M.type = "dark"

M = require("base46").override_theme(M, "rshiner_theme")

return M
