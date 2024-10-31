return {
  {
    "mfussenegger/nvim-jdtls",
    settings = {
      java = {
        configuration = {
          runtimes = {
            {
              name = "JavaSE-17",
              path = vim.env.HOME .. "/.local/share/mise/installs/java/17.0.2/",
            },
          },
        },
      },
    },
  },
}
