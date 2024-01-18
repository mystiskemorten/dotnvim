return {
  {
    "nfrid/markdown-togglecheck",
    dependencies = { "nfrid/treesitter-utils" },
    ft = { "markdown" },
    opts = function(_, _)
      -- toggle checked / create checkbox if it doesn't exist
      vim.keymap.set("n", "<leader>n", require("markdown-togglecheck").toggle, { desc = "Toggle Checkmark" })
    end,
  },
}
