-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>rf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "RSpec on file" })
vim.keymap.set("n", "<leader>rl", ":lua require('neotest').run.run()<CR>", { desc = "RSpec on test" })
vim.keymap.set("n", "<leader>ro", ":lua require('neotest').output.open({enter = true})<CR>", { desc = "RSpec output" })
vim.keymap.set("n", "<leader>rp", ":lua require('neotest').summary.open()<CR>", { desc = "RSpec summary" })
