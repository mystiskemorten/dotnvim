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
        "<leader>gv",
        function()
          toggle_diffview("DiffviewOpen")
        end,
        desc = "Diff Index",
      },
      {
        "<leader>gV",
        function()
          toggle_diffview("DiffviewOpen master..HEAD")
        end,
        desc = "Diff master",
      },
      {
        "<leader>gl",
        function()
          toggle_diffview("DiffviewFileHistory")
        end,
        desc = "Open diffs for project",
      },
      {
        "<leader>gL",
        function()
          toggle_diffview("DiffviewFileHistory %")
        end,
        desc = "Open diffs for current File",
      },
    },
  },
}
