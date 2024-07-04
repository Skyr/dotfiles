return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  config = function()
    require("catppuccin").setup()
    vim.cmd.colorscheme("catppuccin-frappe")
  end,
}
