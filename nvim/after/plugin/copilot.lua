local g = vim.g
local map = vim.keymap.set

g.copilot_no_tab_map = true
map("i", "<M-;>", 'copilot#Accept("<CR>")',
  { noremap = true, silent = true, expr = true, replace_keycodes = false })
