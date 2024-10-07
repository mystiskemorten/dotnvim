return {
  {
    "mfussenegger/nvim-jdtls",
    settings = {
      java = {
        configuration = {
          runtimes = {
            {
              name = "JavaSE-17",
              path = vim.env.HOME .. "/.sdkman/candidates/java/17.0.11-jbr/",
            },
          },
        },
      },
    },
  },
}
