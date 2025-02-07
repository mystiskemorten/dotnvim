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
      },
    },
  },
}
