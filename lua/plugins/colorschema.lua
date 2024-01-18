return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      contrast = "soft",
      transparent_mode = true,
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    opts = function(_, _)
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },

  -- disable colorscheme
  { "catppuccin", enabled = false },
  { "tokyonight.nvim", enabled = false },
}
