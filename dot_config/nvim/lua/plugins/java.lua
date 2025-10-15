



return {
  "nvim-java/nvim-java",
  -- version = "1.4.0",
  dependencies = {
    "nvim-java/nvim-java-refactor",
    "nvim-java/lua-async-await",
    "nvim-java/nvim-java-core",
    "nvim-java/nvim-java-test",
    "nvim-java/nvim-java-dap",
    "MunifTanjim/nui.nvim",
    "neovim/nvim-lspconfig",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap",
    {
      "mason-org/mason.nvim",
      opts = {
        registries = {
          "github:nvim-java/mason-registry",
          "github:mason-org/mason-registry",
        },
      },
    },
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {
        handlers = {
          ["jdtls"] = function()
            require("java").setup()
          end,
        },
      },
    },
  },
  opts = {},
}
