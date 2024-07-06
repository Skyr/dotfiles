-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Buffers
vim.keymap.set("n", "<A-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<A-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- git
vim.keymap.set("n", "<leader>gs", "<cmd>Neogit<cr>", { desc = "Neogit status" })
vim.keymap.set("n", "<leader>gc", "<cmd>Neogit commit<cr>", { desc = "Neogit commit" })
vim.keymap.set("n", "<leader>gp", "<cmd>Neogit pull<cr>", { desc = "Neogit pull" })
vim.keymap.set("n", "<leader>gP", "<cmd>Neogit push<cr>", { desc = "Neogit push" })
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Select branch" })
