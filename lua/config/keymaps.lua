-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Trim space
vim.keymap.set("n", "J", "mzJ`z")

-- Jump p/down in file by 10 lines
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Next and prev search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank from position to end of line
vim.keymap.set("n", "Y", "yg$")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- chmod
vim.keymap.set("n", "<leader>fx", "<cmd>!chmod +x %<CR>", { silent = true })

-- fugitive
vim.keymap.set("n", "<leader>gd", vim.cmd.Git)

-- Replace text
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]], { desc = "Replace word" })
vim.keymap.set("v", "<leader>rc", [["hy:%s/<C-r>h//gc<Left><Left><Left>]], { desc = "Replace text and confirm" })
vim.keymap.set("v", "<leader>ri", [["hy:%s/<C-r>h//gI<Left><Left><Left>]], { desc = "Replace text not confirm" })
vim.keymap.set("n", "<leader>rq", [[:cdo s/foo/bar/gI]], { desc = "Replace text in quicklist" })

-- change keymaps due to norwegian keyboard layout
vim.keymap.set("n", "<leader>|", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>+", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>å", "<C-W>v", { desc = "Split window right", remap = true })

-- Function to toggle background
local toggle_background = function()
  local current_bg = vim.fn.eval("&background")
  print("Current background:", current_bg)
  if current_bg == "light" then
    vim.g.gruvbox_material_transparent_background = 1
    vim.cmd("set bg=dark")
  else
    vim.g.gruvbox_material_transparent_background = 0
    vim.cmd("set bg=light")
  end
end

-- Key mapping to call the function
vim.keymap.set("n", "<leader>ub", toggle_background, { noremap = true, silent = true })

local copy_reference = function()
  -- Get current buffer's filename relative to the project root
  local filepath = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
  -- Get the current line number
  local lineno = vim.api.nvim_win_get_cursor(0)[1]

  -- Construct the reference string
  local reference = filepath .. ":" .. lineno

  -- Copy the reference to the clipboard
  vim.fn.setreg("+", reference)

  -- Optionally, print the reference
  print(reference)
end

-- Map the function to a key combination
vim.keymap.set("n", "<leader>fy", copy_reference, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>-", LazyVim.pick("live_grep"), { desc = "Grep (Root Dir)" })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<M-1>", "<cmd>silent !tmux neww tmux-session-jump 1<CR>")
vim.keymap.set("n", "<M-2>", "<cmd>silent !tmux neww tmux-session-jump 2<CR>")
vim.keymap.set("n", "<M-3>", "<cmd>silent !tmux neww tmux-session-jump 3<CR>")
vim.keymap.set("n", "<M-4>", "<cmd>silent !tmux neww tmux-session-jump 4<CR>")
