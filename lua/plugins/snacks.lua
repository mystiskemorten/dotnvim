return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>e",
        false,
      },
    },
    opts = {
      explorer = {
        replace_netrw = false,
      },
      dashboard = {
        enabled = false,
      },
      picker = {
        layout = {
          preset = "vertical_fullscreen",
        },
        layouts = {
          vertical_fullscreen = {
            layout = {
              backdrop = false,
              -- width = 0.5,
              -- min_width = 80,
              -- height = 0.9,
              -- min_height = 28,
              box = "vertical",
              border = false,
              title = "{title} {live} {flags}",
              title_pos = "center",
              {
                win = "input",
                height = 1,
                border = "bottom",
              },
              {
                win = "list",
                border = "none",
              },
              {
                win = "preview",
                title = "{preview}",
                border = "top",
                height = 0.8,
              },
            },
          },
        },
      },
    },
  },
}
