return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      contrast = "hard",
      transparent_mode = true,
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    opts = function(_, _)
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_enable_italic = true
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        transparency = true,
      },
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
