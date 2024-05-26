local custom_gruvbox = require("lualine.themes.gruvbox-material")

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.a.fg = custom_gruvbox.normal.a.bg
custom_gruvbox.normal.a.bg = nil
custom_gruvbox.normal.b.bg = nil
custom_gruvbox.normal.c.bg = nil
custom_gruvbox.command.a.fg = custom_gruvbox.command.a.bg
custom_gruvbox.command.a.bg = nil
custom_gruvbox.command.b.bg = nil
custom_gruvbox.command.c.bg = nil
custom_gruvbox.insert.a.fg = custom_gruvbox.insert.a.bg
custom_gruvbox.insert.a.bg = nil
custom_gruvbox.insert.b.bg = nil
custom_gruvbox.insert.c.bg = nil
custom_gruvbox.replace.a.fg = custom_gruvbox.replace.a.bg
custom_gruvbox.replace.a.bg = nil
custom_gruvbox.replace.b.bg = nil
custom_gruvbox.replace.c.bg = nil
custom_gruvbox.visual.a.fg = custom_gruvbox.visual.a.bg
custom_gruvbox.visual.a.bg = nil
custom_gruvbox.visual.b.bg = nil
custom_gruvbox.visual.c.bg = nil

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
