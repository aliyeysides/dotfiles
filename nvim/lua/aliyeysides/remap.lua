local g = vim.g
local map = vim.keymap.set

g.mapleader = " "

-- copilot
g.copilot_no_tab_map = true
map("i", "<M-;>", 'copilot#Accept("<CR>")',
  { noremap = true, silent = true, expr = true, replace_keycodes = false })

-- opens netrw
map("n", "<leader>e", vim.cmd.Ex)

-- navigate within insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")

-- switch between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- go to beginning and end
map("i", "<C-b>", "<ESC>^i")
map("i", "<C-e>", "<End>")

-- remove highlight with ESC
map("n", "<ESC>", "<cmd> noh <CR>")

-- delete without updating registry
map("n", "<leader>d", "\"_d")
map("n", "<leader>c", "\"_c")
map("v", "<leader>d", "\"_d")
map("v", "<leader>p", "\"_dP")

-- move highlighted lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- replace word on cursor
map("n", "<leader>S", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")

-- undo tree visualizer
map('n', '<leader>u', vim.cmd.UndotreeToggle)
