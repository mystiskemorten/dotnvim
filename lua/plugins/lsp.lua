return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bicep = {
          filetypes = { "bicep" },
        },
        graphql = {
          filetypes = { "graphql", "graphqls" },
        },
        fish_lsp = {
          filetypes = { "fish" },
        },
        lua = {
          filetypes = { "lua" },
        },
        graphitron = {
          cmd = {
            vim.fn.expand("$HOME") .. "/projects/graphitron-lsp/target/release/graphitron-lsp",
          },
          filetypes = { "graphql", "graphqls" },
        },
      },
    },
  },
}
