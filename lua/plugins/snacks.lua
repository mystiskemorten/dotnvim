return {
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = false },
      dim = { enabled = true },
      scope = { enabled = true },
      zen = { enabled = true },
    },
    keys = {
      {
        "<leader>z",
        function()
          Snacks.zen()
        end,
        desc = "Toggle Zen Mode",
      },
      {
        "<leader>Z",
        function()
          Snacks.zen.zoom()
        end,
        desc = "Toggle Zoom",
      },
    },
  },
}
