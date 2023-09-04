require("harpoon")

local map = vim.keymap.set

map("n", "<leader>s", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
  { noremap = true, silent = true })
map("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>",
  { noremap = true, silent = true })
