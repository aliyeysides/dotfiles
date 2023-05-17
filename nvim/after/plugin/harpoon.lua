local harpoon = require("harpoon")

vim.api.nvim_set_keymap("n", "<leader>hs", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", { noremap = true, silent = true })
