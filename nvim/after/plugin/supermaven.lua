local map = vim.keymap.set
local api = require("supermaven-nvim.api")

map("n", "<leader>m", api.toggle, { noremap = true, silent = true })
