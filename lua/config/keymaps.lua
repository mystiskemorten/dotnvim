-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move current line up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Trim space
vim.keymap.set("n", "J", "mzJ`z")

-- Jump p/down in file by 10 lines
vim.keymap.set("n", "<C-d>", "10jzz")
vim.keymap.set("n", "<C-u>", "10kzz")

-- Yank from position to end of line
vim.keymap.set("n", "Y", "yg$")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- zenmode
vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<cr>", { silent = true, noremap = true, desc = "[Z]enMode" })

-- fugitive
vim.keymap.set("n", "<leader>gd", vim.cmd.Git)

-- diffview
vim.api.nvim_set_keymap(
  "n",
  "<leader>gv",
  ":DiffviewOpen<cr>",
  { silent = true, noremap = true, desc = "[G]it diffview [o]pen" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gq",
  ":DiffviewClose<cr>",
  { silent = true, noremap = true, desc = "[G]it diffview [q]uit" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gl",
  ":DiffviewFileHistory<cr>",
  { silent = true, noremap = true, desc = "[G]it diffview file [h]istory" }
)
