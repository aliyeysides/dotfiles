local builtin = require('telescope.builtin')
local map = vim.keymap.set

map('n', '<leader>ff', function()
  builtin.find_files({ find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' } });
end)
map('n', '<leader>gt', builtin.git_files, {})
map('n', '<leader>pf', function()
  builtin.live_grep();
end)
map('n', '<leader>fw', function()
  builtin.grep_string();
end)
