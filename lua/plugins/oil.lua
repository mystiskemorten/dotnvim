return {
  "stevearc/oil.nvim",
  lazy = false,
  keys = {
    { "<leader>e", "<cmd>Oil --float<CR>", desc = "Explorer" },
  },
  opts = {
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 5,
    },
    keymaps = {
      ["<leader>e"] = { "actions.close", mode = "n" },
      ["+"] = { "actions.parent", mode = "n" },
      ["?"] = { "actions.open_cwd", mode = "n" },
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
