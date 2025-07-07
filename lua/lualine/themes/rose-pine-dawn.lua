local palette = {
  base = { "#faf4ed", 231 },
  surface = { "#fffaf3", 230 },
  overlay = { "#f2e9de", 223 },
  muted = { "#9893a5", 245 },
  subtle = { "#797593", 243 },
  text = { "#575279", 237 },
  love = { "#b4637a", 131 },
  gold = { "#ea9d34", 136 },
  rose = { "#d7827e", 131 },
  pine = { "#286983", 66 },
  foam = { "#56949f", 73 },
  iris = { "#907aa9", 103 },
  none = { "NONE", "NONE" },
}

local theme = {
  normal = {
    a = { fg = palette.text[1], bg = nil, gui = "bold" },
    b = { fg = palette.subtle[1], bg = nil },
    c = { fg = palette.subtle[1], bg = nil },
  },
  insert = {
    a = { fg = palette.foam[1], bg = nil, gui = "bold" },
    b = { fg = palette.subtle[1], bg = nil },
    c = { fg = palette.subtle[1], bg = nil },
  },
  visual = {
    a = { fg = palette.love[1], bg = nil, gui = "bold" },
    b = { fg = palette.subtle[1], bg = nil },
    c = { fg = palette.subtle[1], bg = nil },
  },
  replace = {
    a = { fg = palette.gold[1], bg = nil, gui = "bold" },
    b = { fg = palette.subtle[1], bg = nil },
    c = { fg = palette.subtle[1], bg = nil },
  },
  command = {
    a = { fg = palette.pine[1], bg = nil, gui = "bold" },
    b = { fg = palette.subtle[1], bg = nil },
    c = { fg = palette.subtle[1], bg = nil },
  },
  terminal = {
    a = { fg = palette.iris[1], bg = nil, gui = "bold" },
    b = { fg = palette.subtle[1], bg = nil },
    c = { fg = palette.subtle[1], bg = nil },
  },
  inactive = {
    a = { fg = palette.muted[1], bg = nil },
    b = { fg = palette.muted[1], bg = nil },
    c = { fg = palette.muted[1], bg = nil },
  },
}

return theme
