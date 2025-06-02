local custom_gruvbox = require("lualine.themes.gruvbox-material")

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = custom_gruvbox,
        component_separators = { left = "⎢", right = "⎥" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_y = {
          { "location" },
        },
        lualine_z = {
          {
            "progress",
            fmt = function(str)
              return " " .. str
            end,
          },
        },
      },
    },
  },
}
