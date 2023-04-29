local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>gf', builtin.git_files, {})
keymap.set('n', '<leader>pf', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
