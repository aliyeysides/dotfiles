local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ff', function()
  builtin.find_files({ find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' } });
end)
keymap.set('n', '<leader>gt', builtin.git_files, {})
keymap.set('n', '<leader>pf', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
