require("harpoon")

local keymap = vim.keymap

keymap.set("n", "<leader>s", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
  { noremap = true, silent = true })
keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>",
  { noremap = true, silent = true })
