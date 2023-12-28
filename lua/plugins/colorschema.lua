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

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- disable colorscheme
  { "catppuccin", enabled = false },
  { "tokyonight.nvim", enabled = false },
}
