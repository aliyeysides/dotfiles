local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
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

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-q>"] = function(prompt_bufnr)
          actions.send_selected_to_qflist(prompt_bufnr)
          actions.open_qflist(prompt_bufnr)
        end,
        ["<C-a>"] = function(prompt_bufnr)
          actions.send_to_qflist(prompt_bufnr)
          actions.open_qflist(prompt_bufnr)
        end
      },
      n = {
        ["<C-q>"] = function(prompt_bufnr)
          actions.send_selected_to_qflist(prompt_bufnr)
          actions.open_qflist(prompt_bufnr)
        end,
        ["<C-a>"] = function(prompt_bufnr)
          actions.send_to_qflist(prompt_bufnr)
          actions.open_qflist(prompt_bufnr)
        end
      },
    },
  }
})
