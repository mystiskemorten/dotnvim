-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.background = "light"
vim.opt.colorcolumn = "80"
vim.opt.cmdheight = 0

vim.opt.diffopt = {
  "internal",
  "filler",
  "closeoff",
  "context:12",
  "algorithm:histogram",
  "linematch:200",
  "indent-heuristic",
  "iwhite", -- I toggle this one, it doesn't fit all cases.
}

vim.g.snacks_animate = false
vim.g.lazyvim_prettier_needs_config = true
