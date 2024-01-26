local custom_gruvbox = require("lualine.themes.gruvbox-material")

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.a.fg = "#a89984"
custom_gruvbox.normal.a.bg = nil
custom_gruvbox.normal.b.bg = nil
custom_gruvbox.normal.c.bg = nil
custom_gruvbox.command.a.fg = "#7daea3"
custom_gruvbox.command.a.bg = nil
custom_gruvbox.insert.a.fg = "#a9b665"
custom_gruvbox.insert.a.bg = nil
custom_gruvbox.replace.a.fg = "#d8a657"
custom_gruvbox.replace.a.bg = nil
custom_gruvbox.visual.a.fg = "#ea6962"
custom_gruvbox.visual.a.bg = nil

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options.theme = custom_gruvbox
      opts.options.component_separators = { left = "⎢", right = "⎥" }
      opts.options.section_separators = { left = "", right = "" }
      opts.sections.lualine_y = {
        { "location" },
      }
      opts.sections.lualine_z = {
        {
          "progress",
          fmt = function(str)
            return " " .. str
          end,
        },
      }
    end,
  },
}
