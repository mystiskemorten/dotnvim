local function toggle_diffview(cmd)
  if next(require("diffview.lib").views) == nil then
    vim.cmd(cmd)
  else
    vim.cmd("DiffviewClose")
  end
end

return {
  {
    "sindrets/diffview.nvim",
    lazy = false,
    requires = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>go",
        function()
          toggle_diffview("DiffviewOpen")
        end,
        desc = "Diff Index",
      },
      {
        "<leader>gO",
        function()
          toggle_diffview("DiffviewOpen main..HEAD")
        end,
        desc = "Diff main",
      },
      {
        "<leader>gf",
        function()
          toggle_diffview("DiffviewFileHistory")
        end,
        desc = "Open diffs for project",
      },
      {
        "<leader>gF",
        function()
          toggle_diffview("DiffviewFileHistory %")
        end,
        desc = "Open diffs for current File",
      },
    },
  },
}
