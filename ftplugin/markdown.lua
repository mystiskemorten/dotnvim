vim.opt_local.wrap = true
vim.opt_local.colorcolumn = "0"

vim.fn["personal#markdown#init"]()

vim.bo.indentexpr = "personal#markdown#indentexpr(v:lnum)"

vim.keymap.set(
  "n",
  "<leader>aa",
  "<cmd>call personal#markdown#create_notes()<cr>",
  { buffer = true }
)
vim.keymap.set(
  "n",
  "<leader>ai",
  "<cmd>call personal#markdown#prepare_image()<cr>",
  { buffer = true }
)
vim.keymap.set(
  "n",
  "<leader>aI",
  "<cmd>call personal#markdown#view_image()<cr>",
  { buffer = true }
)

vim.keymap.set(
  "n",
  "<leader>ar",
  "<cmd>call medieval#eval('', #{ after: { _, _ -> personal#markdown#place_signs() } })",
  { buffer = true }
)

