require("outline").setup()

local map = vim.keymap.set

map("n", "<leader>o", vim.cmd.Outline)
