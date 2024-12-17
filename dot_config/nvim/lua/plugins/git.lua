return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
  },
  {
    "lewis6991/gitsigns.nvim",
    keys = function()
      local gitsigns = require("gitsigns")
      return {
        { "<leader>hs", gitsigns.stage_hunk, desc = "Stage hunk" },
        { "<leader>hr", gitsigns.reset_hunk, desc = "Reset hunk" },
        { "<leader>hS", gitsigns.stage_buffer, desc = "Stage buffer" },
        { "<leader>hu", gitsigns.undo_stage_hunk, desc = "Undo stage hunk" },
        { "<leader>hR", gitsigns.reset_buffer, desc = "Reset buffer" },
      }
    end,
  },
}
