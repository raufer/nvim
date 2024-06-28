require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "Q", ":q<CR>")
map("n", "<leader>j", ":HopWord<CR>")
map("i", "<C-j>", "copilot#Accept('<CR>')", {noremap = true, silent = true, expr=true, replace_keycodes = false })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
