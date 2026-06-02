return {
  {
    "ThePrimeagen/99",
    keys = {
      {
        "<leader>9s",
        function()
          require("99").search()
        end,
        desc = "99 Search",
      },
      {
        "<leader>9x",
        function()
          require("99").stop_all_requests()
        end,
        desc = "99 Stop Requests",
      },
      {
        "<leader>9v",
        function()
          require("99").visual()
        end,
        mode = "v",
        desc = "99 Visual",
      },
    },
    config = function()
      require("99").setup({
        md_files = {
          "AGENT.md",
          "CLAUDE.md",
        },
        provider = require("99").Providers.ClaudeCodeProvider,
        model = "claude-sonnet-4-5",
        tmp_dir = "./tmp99",
      })
    end,
  },
}
