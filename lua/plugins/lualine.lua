local custom_rosepine = require("lualine.themes.rose-pine-dawn")

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = custom_rosepine,
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
