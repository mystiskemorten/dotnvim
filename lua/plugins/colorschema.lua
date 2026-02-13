return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      contrast = "hard",
      transparent_mode = false,
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    opts = function(_, _)
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard"
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        transparency = true,
      },
      palette = {
        dawn = {
          text = "#464261",
        },
      },
    },
  },

  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },

  -- disable colorscheme
  { "catppuccin", enabled = false },
  { "tokyonight.nvim", enabled = false },
}
