-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    if vim.fn.expand("%:t") == "NOTES.md" then
      vim.diagnostic.enable(false)
      vim.opt_local.spell = false
    else
      vim.opt_local.spelllang = "nb,en"
    end
    vim.opt_local.foldlevel = 1
  end,
})
